# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.boing.Debug:
PostBuild.glfw.Debug: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Debug/boing.app/Contents/MacOS/boing
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Debug/boing.app/Contents/MacOS/boing:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Debug/boing.app/Contents/MacOS/boing


PostBuild.clipboard.Debug:
PostBuild.glfw.Debug: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/clipboard
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/clipboard:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/clipboard


PostBuild.cursor.Debug:
PostBuild.glfw.Debug: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/cursor
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/cursor:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/cursor


PostBuild.empty.Debug:
PostBuild.glfw.Debug: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/empty.app/Contents/MacOS/empty
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/empty.app/Contents/MacOS/empty:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/empty.app/Contents/MacOS/empty


PostBuild.events.Debug:
PostBuild.glfw.Debug: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/events
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/events:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/events


PostBuild.gamma.Debug:
PostBuild.glfw.Debug: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/gamma
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/gamma:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/gamma


PostBuild.gears.Debug:
PostBuild.glfw.Debug: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Debug/gears.app/Contents/MacOS/gears
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Debug/gears.app/Contents/MacOS/gears:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Debug/gears.app/Contents/MacOS/gears


PostBuild.glfw.Debug:
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a:
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a


PostBuild.glfwinfo.Debug:
PostBuild.glfw.Debug: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/glfwinfo
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/glfwinfo:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/glfwinfo


PostBuild.heightmap.Debug:
PostBuild.glfw.Debug: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Debug/heightmap.app/Contents/MacOS/heightmap
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Debug/heightmap.app/Contents/MacOS/heightmap:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Debug/heightmap.app/Contents/MacOS/heightmap


PostBuild.iconify.Debug:
PostBuild.glfw.Debug: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/iconify
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/iconify:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/iconify


PostBuild.joysticks.Debug:
PostBuild.glfw.Debug: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/joysticks
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/joysticks:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/joysticks


PostBuild.monitors.Debug:
PostBuild.glfw.Debug: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/monitors
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/monitors:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/monitors


PostBuild.msaa.Debug:
PostBuild.glfw.Debug: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/msaa
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/msaa:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/msaa


PostBuild.particles.Debug:
PostBuild.glfw.Debug: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Debug/particles.app/Contents/MacOS/particles
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Debug/particles.app/Contents/MacOS/particles:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Debug/particles.app/Contents/MacOS/particles


PostBuild.reopen.Debug:
PostBuild.glfw.Debug: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/reopen
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/reopen:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/reopen


PostBuild.sharing.Debug:
PostBuild.glfw.Debug: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/sharing.app/Contents/MacOS/sharing
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/sharing.app/Contents/MacOS/sharing:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/sharing.app/Contents/MacOS/sharing


PostBuild.simple.Debug:
PostBuild.glfw.Debug: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Debug/simple.app/Contents/MacOS/simple
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Debug/simple.app/Contents/MacOS/simple:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Debug/simple.app/Contents/MacOS/simple


PostBuild.splitview.Debug:
PostBuild.glfw.Debug: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Debug/splitview.app/Contents/MacOS/splitview
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Debug/splitview.app/Contents/MacOS/splitview:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Debug/splitview.app/Contents/MacOS/splitview


PostBuild.tearing.Debug:
PostBuild.glfw.Debug: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/tearing.app/Contents/MacOS/tearing
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/tearing.app/Contents/MacOS/tearing:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/tearing.app/Contents/MacOS/tearing


PostBuild.threads.Debug:
PostBuild.glfw.Debug: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/threads.app/Contents/MacOS/threads
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/threads.app/Contents/MacOS/threads:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/threads.app/Contents/MacOS/threads


PostBuild.title.Debug:
PostBuild.glfw.Debug: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/title.app/Contents/MacOS/title
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/title.app/Contents/MacOS/title:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/title.app/Contents/MacOS/title


PostBuild.wave.Debug:
PostBuild.glfw.Debug: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Debug/wave.app/Contents/MacOS/wave
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Debug/wave.app/Contents/MacOS/wave:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Debug/wave.app/Contents/MacOS/wave


PostBuild.windows.Debug:
PostBuild.glfw.Debug: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/windows.app/Contents/MacOS/windows
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/windows.app/Contents/MacOS/windows:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Debug/windows.app/Contents/MacOS/windows


PostBuild.boing.Release:
PostBuild.glfw.Release: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Release/boing.app/Contents/MacOS/boing
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Release/boing.app/Contents/MacOS/boing:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Release/boing.app/Contents/MacOS/boing


PostBuild.clipboard.Release:
PostBuild.glfw.Release: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/clipboard
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/clipboard:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/clipboard


PostBuild.cursor.Release:
PostBuild.glfw.Release: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/cursor
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/cursor:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/cursor


PostBuild.empty.Release:
PostBuild.glfw.Release: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/empty.app/Contents/MacOS/empty
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/empty.app/Contents/MacOS/empty:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/empty.app/Contents/MacOS/empty


PostBuild.events.Release:
PostBuild.glfw.Release: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/events
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/events:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/events


PostBuild.gamma.Release:
PostBuild.glfw.Release: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/gamma
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/gamma:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/gamma


PostBuild.gears.Release:
PostBuild.glfw.Release: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Release/gears.app/Contents/MacOS/gears
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Release/gears.app/Contents/MacOS/gears:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Release/gears.app/Contents/MacOS/gears


PostBuild.glfw.Release:
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a:
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a


PostBuild.glfwinfo.Release:
PostBuild.glfw.Release: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/glfwinfo
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/glfwinfo:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/glfwinfo


PostBuild.heightmap.Release:
PostBuild.glfw.Release: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Release/heightmap.app/Contents/MacOS/heightmap
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Release/heightmap.app/Contents/MacOS/heightmap:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Release/heightmap.app/Contents/MacOS/heightmap


PostBuild.iconify.Release:
PostBuild.glfw.Release: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/iconify
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/iconify:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/iconify


PostBuild.joysticks.Release:
PostBuild.glfw.Release: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/joysticks
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/joysticks:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/joysticks


PostBuild.monitors.Release:
PostBuild.glfw.Release: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/monitors
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/monitors:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/monitors


PostBuild.msaa.Release:
PostBuild.glfw.Release: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/msaa
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/msaa:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/msaa


PostBuild.particles.Release:
PostBuild.glfw.Release: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Release/particles.app/Contents/MacOS/particles
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Release/particles.app/Contents/MacOS/particles:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Release/particles.app/Contents/MacOS/particles


PostBuild.reopen.Release:
PostBuild.glfw.Release: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/reopen
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/reopen:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/reopen


PostBuild.sharing.Release:
PostBuild.glfw.Release: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/sharing.app/Contents/MacOS/sharing
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/sharing.app/Contents/MacOS/sharing:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/sharing.app/Contents/MacOS/sharing


PostBuild.simple.Release:
PostBuild.glfw.Release: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Release/simple.app/Contents/MacOS/simple
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Release/simple.app/Contents/MacOS/simple:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Release/simple.app/Contents/MacOS/simple


PostBuild.splitview.Release:
PostBuild.glfw.Release: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Release/splitview.app/Contents/MacOS/splitview
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Release/splitview.app/Contents/MacOS/splitview:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Release/splitview.app/Contents/MacOS/splitview


PostBuild.tearing.Release:
PostBuild.glfw.Release: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/tearing.app/Contents/MacOS/tearing
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/tearing.app/Contents/MacOS/tearing:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/tearing.app/Contents/MacOS/tearing


PostBuild.threads.Release:
PostBuild.glfw.Release: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/threads.app/Contents/MacOS/threads
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/threads.app/Contents/MacOS/threads:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/threads.app/Contents/MacOS/threads


PostBuild.title.Release:
PostBuild.glfw.Release: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/title.app/Contents/MacOS/title
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/title.app/Contents/MacOS/title:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/title.app/Contents/MacOS/title


PostBuild.wave.Release:
PostBuild.glfw.Release: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Release/wave.app/Contents/MacOS/wave
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Release/wave.app/Contents/MacOS/wave:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/Release/wave.app/Contents/MacOS/wave


PostBuild.windows.Release:
PostBuild.glfw.Release: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/windows.app/Contents/MacOS/windows
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/windows.app/Contents/MacOS/windows:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/Release/windows.app/Contents/MacOS/windows


PostBuild.boing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/MinSizeRel/boing.app/Contents/MacOS/boing
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/MinSizeRel/boing.app/Contents/MacOS/boing:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/MinSizeRel/boing.app/Contents/MacOS/boing


PostBuild.clipboard.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/clipboard
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/clipboard:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/clipboard


PostBuild.cursor.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/cursor
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/cursor:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/cursor


PostBuild.empty.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/empty.app/Contents/MacOS/empty
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/empty.app/Contents/MacOS/empty:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/empty.app/Contents/MacOS/empty


PostBuild.events.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/events
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/events:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/events


PostBuild.gamma.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/gamma
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/gamma:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/gamma


PostBuild.gears.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/MinSizeRel/gears.app/Contents/MacOS/gears
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/MinSizeRel/gears.app/Contents/MacOS/gears:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/MinSizeRel/gears.app/Contents/MacOS/gears


PostBuild.glfw.MinSizeRel:
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a:
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a


PostBuild.glfwinfo.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/glfwinfo
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/glfwinfo:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/glfwinfo


PostBuild.heightmap.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/MinSizeRel/heightmap.app/Contents/MacOS/heightmap
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/MinSizeRel/heightmap.app/Contents/MacOS/heightmap:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/MinSizeRel/heightmap.app/Contents/MacOS/heightmap


PostBuild.iconify.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/iconify
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/iconify:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/iconify


PostBuild.joysticks.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/joysticks
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/joysticks:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/joysticks


PostBuild.monitors.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/monitors
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/monitors:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/monitors


PostBuild.msaa.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/msaa
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/msaa:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/msaa


PostBuild.particles.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/MinSizeRel/particles.app/Contents/MacOS/particles
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/MinSizeRel/particles.app/Contents/MacOS/particles:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/MinSizeRel/particles.app/Contents/MacOS/particles


PostBuild.reopen.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/reopen
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/reopen:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/reopen


PostBuild.sharing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/sharing.app/Contents/MacOS/sharing
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/sharing.app/Contents/MacOS/sharing:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/sharing.app/Contents/MacOS/sharing


PostBuild.simple.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/MinSizeRel/simple.app/Contents/MacOS/simple
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/MinSizeRel/simple.app/Contents/MacOS/simple:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/MinSizeRel/simple.app/Contents/MacOS/simple


PostBuild.splitview.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/MinSizeRel/splitview.app/Contents/MacOS/splitview
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/MinSizeRel/splitview.app/Contents/MacOS/splitview:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/MinSizeRel/splitview.app/Contents/MacOS/splitview


PostBuild.tearing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/tearing.app/Contents/MacOS/tearing
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/tearing.app/Contents/MacOS/tearing:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/tearing.app/Contents/MacOS/tearing


PostBuild.threads.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/threads.app/Contents/MacOS/threads
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/threads.app/Contents/MacOS/threads:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/threads.app/Contents/MacOS/threads


PostBuild.title.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/title.app/Contents/MacOS/title
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/title.app/Contents/MacOS/title:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/title.app/Contents/MacOS/title


PostBuild.wave.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/MinSizeRel/wave.app/Contents/MacOS/wave
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/MinSizeRel/wave.app/Contents/MacOS/wave:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/MinSizeRel/wave.app/Contents/MacOS/wave


PostBuild.windows.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/windows.app/Contents/MacOS/windows
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/windows.app/Contents/MacOS/windows:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/MinSizeRel/windows.app/Contents/MacOS/windows


PostBuild.boing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/RelWithDebInfo/boing.app/Contents/MacOS/boing
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/RelWithDebInfo/boing.app/Contents/MacOS/boing:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/RelWithDebInfo/boing.app/Contents/MacOS/boing


PostBuild.clipboard.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/clipboard
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/clipboard:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/clipboard


PostBuild.cursor.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/cursor
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/cursor:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/cursor


PostBuild.empty.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/empty.app/Contents/MacOS/empty
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/empty.app/Contents/MacOS/empty:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/empty.app/Contents/MacOS/empty


PostBuild.events.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/events
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/events:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/events


PostBuild.gamma.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/gamma
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/gamma:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/gamma


PostBuild.gears.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/RelWithDebInfo/gears.app/Contents/MacOS/gears
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/RelWithDebInfo/gears.app/Contents/MacOS/gears:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/RelWithDebInfo/gears.app/Contents/MacOS/gears


PostBuild.glfw.RelWithDebInfo:
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a:
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a


PostBuild.glfwinfo.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/glfwinfo
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/glfwinfo:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/glfwinfo


PostBuild.heightmap.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/RelWithDebInfo/heightmap.app/Contents/MacOS/heightmap
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/RelWithDebInfo/heightmap.app/Contents/MacOS/heightmap:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/RelWithDebInfo/heightmap.app/Contents/MacOS/heightmap


PostBuild.iconify.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/iconify
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/iconify:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/iconify


PostBuild.joysticks.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/joysticks
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/joysticks:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/joysticks


PostBuild.monitors.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/monitors
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/monitors:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/monitors


PostBuild.msaa.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/msaa
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/msaa:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/msaa


PostBuild.particles.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/RelWithDebInfo/particles.app/Contents/MacOS/particles
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/RelWithDebInfo/particles.app/Contents/MacOS/particles:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/RelWithDebInfo/particles.app/Contents/MacOS/particles


PostBuild.reopen.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/reopen
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/reopen:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/reopen


PostBuild.sharing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/sharing.app/Contents/MacOS/sharing
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/sharing.app/Contents/MacOS/sharing:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/sharing.app/Contents/MacOS/sharing


PostBuild.simple.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/RelWithDebInfo/simple.app/Contents/MacOS/simple
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/RelWithDebInfo/simple.app/Contents/MacOS/simple:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/RelWithDebInfo/simple.app/Contents/MacOS/simple


PostBuild.splitview.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/RelWithDebInfo/splitview.app/Contents/MacOS/splitview
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/RelWithDebInfo/splitview.app/Contents/MacOS/splitview:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/RelWithDebInfo/splitview.app/Contents/MacOS/splitview


PostBuild.tearing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/tearing.app/Contents/MacOS/tearing
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/tearing.app/Contents/MacOS/tearing:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/tearing.app/Contents/MacOS/tearing


PostBuild.threads.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/threads.app/Contents/MacOS/threads
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/threads.app/Contents/MacOS/threads:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/threads.app/Contents/MacOS/threads


PostBuild.title.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/title.app/Contents/MacOS/title
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/title.app/Contents/MacOS/title:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/title.app/Contents/MacOS/title


PostBuild.wave.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/RelWithDebInfo/wave.app/Contents/MacOS/wave
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/RelWithDebInfo/wave.app/Contents/MacOS/wave:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/examples/RelWithDebInfo/wave.app/Contents/MacOS/wave


PostBuild.windows.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/windows.app/Contents/MacOS/windows
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/windows.app/Contents/MacOS/windows:\
	/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/tests/RelWithDebInfo/windows.app/Contents/MacOS/windows




# For each target create a dummy ruleso the target does not have to exist
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Debug/libglfw3.a:
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/MinSizeRel/libglfw3.a:
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/RelWithDebInfo/libglfw3.a:
/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/bin_Visual2012_64bits/external/glfw-3.1.2/src/Release/libglfw3.a:
