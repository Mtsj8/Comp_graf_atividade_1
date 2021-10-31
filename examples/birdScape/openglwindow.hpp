#ifndef OPENGLWINDOW_HPP_
#define OPENGLWINDOW_HPP_

#include <imgui.h>

#include <random>

#include "abcg.hpp"
#include "clouds.hpp"
#include "bird.hpp"

class OpenGLWindow : public abcg::OpenGLWindow {
 protected:
  void handleEvent(SDL_Event& event) override;
  void initializeGL() override;
  void paintGL() override;
  void paintUI() override;
  void resizeGL(int width, int height) override;
  void terminateGL() override;
  void checkCollisions();
  void checkWinCondition();

 private:
  GLuint m_objectsProgram{};

  int m_viewportWidth{};
  int m_viewportHeight{};

  GameData m_gameData;

  Clouds m_clouds;
  Bird m_bird;

  abcg::ElapsedTimer m_restartWaitTimer;
  abcg::ElapsedTimer m_time;
  float m_point_time{};

  ImFont* m_font{};

  std::default_random_engine m_randomEngine;

  std::array<float, 4> m_clearColor{0.0, 0.5, 0.7, 0.55f};

  void restart();
  void update();

  
};

#endif