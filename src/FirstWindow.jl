"""
This module demonstrates how to create your first window using GLFW.
"""
module FirstWindow

using GLFW
using ModernGL

"""
  main()

Application entrypoint for a bare minimum demo which shows how to create a
window using GLFW.
"""
function main()
  # Specify minimum versions
  GLFW.WindowHint(GLFW.CONTEXT_VERSION_MAJOR, 4)
  GLFW.WindowHint(GLFW.CONTEXT_VERSION_MINOR, 6)
  GLFW.WindowHint(GLFW.OPENGL_PROFILE, GLFW.OPENGL_CORE_PROFILE)
  GLFW.WindowHint(GLFW.OPENGL_FORWARD_COMPAT, GL_TRUE)

  # Create the window
  window = GLFW.CreateWindow(800, 600, "Context creation")
  GLFW.ShowWindow(window)
  GLFW.MakeContextCurrent(window)

  GLFW.SetInputMode(window, GLFW.STICKY_KEYS, GL_TRUE)

  while !GLFW.WindowShouldClose(window)
      GLFW.SwapBuffers(window)
      GLFW.PollEvents()
      if GLFW.GetKey(window, GLFW.KEY_ESCAPE) == GLFW.PRESS
          GLFW.SetWindowShouldClose(window, true)
      end
  end

  GLFW.DestroyWindow(window)
end

end # Module FirstWindow
