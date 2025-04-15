--// Importar a função \\--
local ScreenGui, textInfo, containerBar, contentBar = loadstring(game:HttpGet("https://raw.githubusercontent.com/raelhubfunctions/rael-hub-gui/refs/heads/main/Source.lua"))()

getgenv().RaelHubGuiLoad = ScreenGui

local function setValueBar(valueText, valueSize)
  textInfo.Text = valueText
  containerBar.Size = UDim2.new(valueSize, 0, containerBar.Size.Y.Scale, 0)
end

setValueBar(valueText, valueSize)