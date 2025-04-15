local GuiModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/raelhubfunctions/rael-hub-gui/refs/heads/main/Module.lua"))()

local Support = GuiModule.RunInterface(true, "sound", {
  "xeno",
  "krnl"
})

if Support ~= "nosupport" then
  GuiModule.setValueBar({
    Text = "Tralalelo Tralala"
  }
  , 0.7)
end