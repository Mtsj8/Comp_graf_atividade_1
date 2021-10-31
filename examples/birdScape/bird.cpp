#include "bird.hpp"

#include <glm/gtx/fast_trigonometry.hpp>
#include <glm/gtx/rotate_vector.hpp>

#include <fmt/core.h>

#ifdef _WIN32
#include <Windows.h>
#else
#include <unistd.h>
#endif


void Bird::initializeGL(GLuint program) {
  terminateGL();

  m_program = program;
  m_colorLoc = glGetUniformLocation(m_program, "color");
  m_rotationLoc = glGetUniformLocation(m_program, "rotation");
  m_scaleLoc = glGetUniformLocation(m_program, "scale");
  m_translationLoc = glGetUniformLocation(m_program, "translation");

  m_rotation = 0.0f;
  m_translation = glm::vec2(0);
  m_velocity = glm::vec2(0);

std::array<glm::vec2, 24> positions{
      // Bird vec2
      glm::vec2{-15.0f, +9.5f},glm::vec2{-5.0f, +9.5f},
      glm::vec2{-5.0f, -9.5f}, glm::vec2{-44.0f, -9.5f}, 
      glm::vec2{-5.0f, +5.5f}, glm::vec2{-5.0f, +1.5f},   
      glm::vec2{0.0f, +1.5f}, glm::vec2{-15.0f, -9.5f}, 
      glm::vec2{-15.0f, -25.0f}, glm::vec2{-6.0f, -25.0f}, 
      glm::vec2{-6.0f, -30.0f}, glm::vec2{-19.0f, -25.0f},
      glm::vec2{-5.0f, +25.0f}, glm::vec2{-5.0f, -25.0f},
    };

  // Normalize
  for (auto &position : positions) {
    position /= glm::vec2{15.5f, 15.5f};
  }

  std::array indices{0, 1, 3,
                    1, 2, 3,
                    0, 3, 4,
                    0, 4, 5,
                    9, 0, 5,
                    9, 5, 6,
                    9, 6, 8,
                    8, 6, 7,
                    10, 11, 12,
                    10, 12, 13,
                    14, 15, 16,
                    14, 16, 17,
                    18, 19, 20,
                    21, 22, 23};

  // Generate VBO
  glGenBuffers(1, &m_vbo);
  glBindBuffer(GL_ARRAY_BUFFER, m_vbo);
  glBufferData(GL_ARRAY_BUFFER, sizeof(positions), positions.data(),
               GL_STATIC_DRAW);
  glBindBuffer(GL_ARRAY_BUFFER, 0);

  // Generate EBO
  glGenBuffers(1, &m_ebo);
  glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, m_ebo);
  glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices.data(),
               GL_STATIC_DRAW);
  glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);

  // Get location of attributes in the program
  GLint positionAttribute{glGetAttribLocation(m_program, "inPosition")};

  // Create VAO
  glGenVertexArrays(1, &m_vao);

  // Bind vertex attributes to current VAO
  glBindVertexArray(m_vao);

  glEnableVertexAttribArray(positionAttribute);
  glBindBuffer(GL_ARRAY_BUFFER, m_vbo);
  glVertexAttribPointer(positionAttribute, 2, GL_FLOAT, GL_FALSE, 0, 
                        nullptr);
  glBindBuffer(GL_ARRAY_BUFFER, 0);

  glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, m_ebo);

  // End of binding to current VAO
  glBindVertexArray(0);

  m_translation = glm::vec2(-0.5f, 0);

}

void Bird::paintGL(const GameData &gameData) {
  if (gameData.m_state != State::Playing) return;

  glUseProgram(m_program);

  glBindVertexArray(m_vao);

  glUniform1f(m_scaleLoc, m_scale);
  glUniform1f(m_rotationLoc, m_rotation);
  glUniform2fv(m_translationLoc, 1, &m_translation.x);

  // Restart thruster blink timer every 100 ms
  if (m_trailBlinkTimer.elapsed() > 100.0 / 1000.0) m_trailBlinkTimer.restart();

  if (gameData.m_input[static_cast<size_t>(Input::Up)]) {
    // Show thruster trail during 50 ms
    if (m_trailBlinkTimer.elapsed() < 50.0 / 1000.0) {
      glEnable(GL_BLEND);
      glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

      // 50% transparent
      glUniform4f(m_colorLoc, 1, 1, 1, 0.5f);

      glDrawElements(GL_TRIANGLES, 6 * 3, GL_UNSIGNED_INT, nullptr);

      glDisable(GL_BLEND);
    }
  }

  glUniform4fv(m_colorLoc, 1, &m_color.r);
  glDrawElements(GL_TRIANGLES, 6 * 3, GL_UNSIGNED_INT, nullptr);

  glBindVertexArray(0);

  glUseProgram(0);
}

void Bird::terminateGL() {
  glDeleteBuffers(1, &m_vbo);
  glDeleteBuffers(1, &m_ebo);
  glDeleteVertexArrays(1, &m_vao);
}

void Bird::update(const GameData &gameData, float deltaTime) {
  m_velocity.x = 1.5f;
  m_velocity.y = 0.0f;

  if (gameData.m_input[static_cast<size_t>(Input::Up)] &&
      gameData.m_state == State::Playing && 
      m_translation.y < 0.85f) {
    m_translation.y += deltaTime * m_velocity.x;
  }

  if (gameData.m_input[static_cast<size_t>(Input::Down)] &&
      gameData.m_state == State::Playing && 
      m_translation.y > -0.75f) {
    m_translation.y -= deltaTime * m_velocity.x;
  }
}