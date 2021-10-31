#include "clouds.hpp"

#include <cppitertools/itertools.hpp>
#include <glm/gtx/fast_trigonometry.hpp>

void Clouds::initializeGL(GLuint program, int quantity) {
  terminateGL();

  // Start pseudo-random number generator
  m_randomEngine.seed(
      std::chrono::steady_clock::now().time_since_epoch().count());

  m_program = program;
  m_colorLoc = abcg::glGetUniformLocation(m_program, "color");
  m_rotationLoc = abcg::glGetUniformLocation(m_program, "rotation");
  m_scaleLoc = abcg::glGetUniformLocation(m_program, "scale");
  m_translationLoc = abcg::glGetUniformLocation(m_program, "translation");

  // Create clouds
  m_clouds.clear();
  m_clouds.resize(quantity);

  for (auto &cloud : m_clouds) {
    cloud = createCloud();

    // Make sure the cloud won't collide with the bird
    do {
      cloud.m_translation = {m_randomDist(m_randomEngine),
                                m_randomDist(m_randomEngine)};
    } while (glm::length(cloud.m_translation) < 0.5f);
  }
}

void Clouds::paintGL() {
  abcg::glUseProgram(m_program);

  for (const auto &cloud : m_clouds) {
    abcg::glBindVertexArray(cloud.m_vao);

    abcg::glUniform4fv(m_colorLoc, 1, &cloud.m_color.r);
    abcg::glUniform1f(m_scaleLoc, cloud.m_scale);
    abcg::glUniform1f(m_rotationLoc, cloud.m_rotation);

    for (auto i : {-2, 0, 2}) {
      for (auto j : {-2, 0, 2}) {
        abcg::glUniform2f(m_translationLoc, cloud.m_translation.x + j,
                          cloud.m_translation.y + i);

        abcg::glDrawArrays(GL_TRIANGLE_FAN, 0, cloud.m_polygonSides + 2);
      }
    }

    abcg::glBindVertexArray(0);
  }

  abcg::glUseProgram(0);
}

void Clouds::terminateGL() {
  for (auto cloud : m_clouds) {
    abcg::glDeleteBuffers(1, &cloud.m_vbo);
    abcg::glDeleteVertexArrays(1, &cloud.m_vao);
  }
}

void Clouds::update(const Bird &bird, float deltaTime) {
  for (auto &cloud : m_clouds) {
    cloud.m_translation -= bird.m_velocity * deltaTime;
    cloud.m_rotation = glm::wrapAngle(
        cloud.m_rotation + cloud.m_angularVelocity * deltaTime);
    cloud.m_translation += cloud.m_velocity * deltaTime;

    // Wrap-around
    if (cloud.m_translation.x < -1.0f) cloud.m_translation.x += 2.0f;
    if (cloud.m_translation.x > +1.0f) cloud.m_translation.x -= 2.0f;
    if (cloud.m_translation.y < -1.0f) cloud.m_translation.y += 2.0f;
    if (cloud.m_translation.y > +1.0f) cloud.m_translation.y -= 2.0f;
  }
}

Clouds::Cloud Clouds::createCloud(glm::vec2 translation,
                                              float scale) {
  Cloud cloud;

  auto &re{m_randomEngine};  // Shortcut

  // Randomly choose the number of sides
  std::uniform_int_distribution<int> randomSides(20, 20);
  cloud.m_polygonSides = randomSides(re);

  // Choose a random color (actually, a grayscale)
  std::uniform_real_distribution<float> randomIntensity(0.5f, 1.0f);
  cloud.m_color = glm::vec4(1) * randomIntensity(re);

  cloud.m_color.a = 1.0f;
  cloud.m_rotation = 0.0f;
  cloud.m_scale = scale;
  cloud.m_translation = translation;

  // Choose a random angular velocity
  cloud.m_angularVelocity = m_randomDist(re);

  // Choose a random direction
  glm::vec2 direction{m_randomDist(re), m_randomDist(re)};
  cloud.m_velocity = glm::normalize(direction) / 7.0f;

  // Create geometry
  std::vector<glm::vec2> positions(0);
  positions.emplace_back(0, 0);
  const auto step{M_PI * 2 / cloud.m_polygonSides};
  std::uniform_real_distribution<float> randomRadius(0.8f, 1.0f);
  for (const auto angle : iter::range(0.0, M_PI * 2, step)) {
    const auto radius{randomRadius(re)};
    positions.emplace_back(radius * std::cos(angle), radius * std::sin(angle));
  }
  positions.push_back(positions.at(1));

  // Generate VBO
  abcg::glGenBuffers(1, &cloud.m_vbo);
  abcg::glBindBuffer(GL_ARRAY_BUFFER, cloud.m_vbo);
  abcg::glBufferData(GL_ARRAY_BUFFER, positions.size() * sizeof(glm::vec2),
                     positions.data(), GL_STATIC_DRAW);
  abcg::glBindBuffer(GL_ARRAY_BUFFER, 0);

  // Get location of attributes in the program
  GLint positionAttribute{abcg::glGetAttribLocation(m_program, "inPosition")};

  // Create VAO
  abcg::glGenVertexArrays(1, &cloud.m_vao);

  // Bind vertex attributes to current VAO
  abcg::glBindVertexArray(cloud.m_vao);

  abcg::glBindBuffer(GL_ARRAY_BUFFER, cloud.m_vbo);
  abcg::glEnableVertexAttribArray(positionAttribute);
  abcg::glVertexAttribPointer(positionAttribute, 2, GL_FLOAT, GL_FALSE, 0,
                              nullptr);
  abcg::glBindBuffer(GL_ARRAY_BUFFER, 0);

  // End of binding to current VAO
  abcg::glBindVertexArray(0);

  return cloud;
}