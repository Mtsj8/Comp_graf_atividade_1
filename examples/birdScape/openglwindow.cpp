#include "openglwindow.hpp"

#include <fmt/core.h>
#include <imgui.h>

#include "abcg.hpp"

void OpenGLWindow::handleEvent(SDL_Event &event) {
  // Keyboard events
  if (event.type == SDL_KEYDOWN) {
    if (event.key.keysym.sym == SDLK_w)
      m_gameData.m_input.set(static_cast<size_t>(Input::Up));
    if (event.key.keysym.sym == SDLK_s)
      m_gameData.m_input.set(static_cast<size_t>(Input::Down));
  }
  if (event.type == SDL_KEYUP) {
    if (event.key.keysym.sym == SDLK_w)
      m_gameData.m_input.reset(static_cast<size_t>(Input::Up));
    if (event.key.keysym.sym == SDLK_s)
      m_gameData.m_input.reset(static_cast<size_t>(Input::Down));
  }

}

void OpenGLWindow::initializeGL() {
  // Load a new font
  ImGuiIO &io{ImGui::GetIO()};
  auto filename{getAssetsPath() + "FFF_Tusj.ttf"};
  m_font = io.Fonts->AddFontFromFileTTF(filename.c_str(), 60.0f);
  if (m_font == nullptr) {
    throw abcg::Exception{abcg::Exception::Runtime("Cannot load font file")};
  }

  // Create program to render the other objects
  m_objectsProgram = createProgramFromFile(getAssetsPath() + "objects.vert",
                                           getAssetsPath() + "objects.frag");

  glClearColor(0, 0, 0, 1);

  // Start pseudo-random number generator
  auto seed{std::chrono::steady_clock::now().time_since_epoch().count()};
  m_randomEngine.seed(seed);

  restart();
}

void OpenGLWindow::restart() {
  m_gameData.m_state = State::Playing;

  m_bird.initializeGL(m_objectsProgram);
  m_clouds.initializeGL(m_objectsProgram, 3);

  m_time.restart();

}

void OpenGLWindow::update() {
  float deltaTime{static_cast<float>(getDeltaTime())};

  // Wait 3 seconds before restarting
  if (m_gameData.m_state != State::Playing &&
      m_restartWaitTimer.elapsed() > 2) {
    restart();
    return;
  }

  m_bird.update(m_gameData, deltaTime);
  m_clouds.update(m_bird, deltaTime);
  if (m_gameData.m_state == State::Playing) {
    checkCollisions();

  m_point_time = m_time.elapsed();
  }
}

void OpenGLWindow::paintGL() {
  update();
  // Set the clear color
  glClearColor(m_clearColor[0], m_clearColor[1], m_clearColor[2],
                     m_clearColor[3]);
  // Clear the color buffer
  glClear(GL_COLOR_BUFFER_BIT);
  glViewport(0, 0, m_viewportWidth, m_viewportHeight);
  m_clouds.paintGL();
  m_bird.paintGL(m_gameData);
}

void OpenGLWindow::paintUI() {
  
  abcg::OpenGLWindow::paintUI();
  {
    ImGui::Begin("SCAPE");

    auto windowSettings{getWindowSettings()};
    ImGui::Text("Ajude o passarinho a escapar das nuvens!");
    ImGui::Text("*instruções*:");    
    ImGui::Text("Aperte W para subir");
    ImGui::Text("Aperte S para descer");
    ImGui::Text("Pontos: %.2f", m_point_time);
    ImGui::End();
  }

  abcg::OpenGLWindow::paintUI();

  {
    auto size{ImVec2(600, 85)};
    auto position{ImVec2((m_viewportWidth - size.x) / 2.0f,
                         (m_viewportHeight - size.y) / 2.0f)};
    ImGui::SetNextWindowPos(position);
    ImGui::SetNextWindowSize(size);
    ImGuiWindowFlags flags{ImGuiWindowFlags_NoBackground |
                           ImGuiWindowFlags_NoTitleBar |
                           ImGuiWindowFlags_NoInputs};
    ImGui::Begin(" ", nullptr, flags);
    ImGui::PushFont(m_font);

    if (m_gameData.m_state == State::GameOver) {
      ImGui::Text("Pontuação: %.2f", m_point_time);
    }

    ImGui::PopFont();
    ImGui::End();
  }
}
void OpenGLWindow::resizeGL(int width, int height) {
  m_viewportWidth = width;
  m_viewportHeight = height;

  glClear(GL_COLOR_BUFFER_BIT);
}

void OpenGLWindow::terminateGL() {
  glDeleteProgram(m_objectsProgram);

  m_clouds.terminateGL();
  m_bird.terminateGL();
}

void OpenGLWindow::checkCollisions() {
  // Check collision between bird and clouds
  for (auto &cloud : m_clouds.m_clouds) {
    auto cloudTranslation{cloud.m_translation};
    auto distance{glm::distance(m_bird.m_translation, cloudTranslation)};


    if (distance < m_bird.m_scale * 0.25f + cloud.m_scale * 1.0f) {
      m_gameData.m_state = State::GameOver;
      m_restartWaitTimer.restart();
    }
  }

}