local GuiModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/raelhubfunctions/rael-hub-gui/refs/heads/main/Module.lua"))()

local ExecutorSupport = GuiModule.RunInterface()

if ExecutorSupport then
  GuiModule.setValueBar({Text = "Finishing"}
  , 1)
end