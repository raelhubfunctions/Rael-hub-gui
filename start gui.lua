--// Importar a função \\--
local ScreenGui, textInfo, containerBar, contentBar = loadstring(game:HttpGet("https://raw.githubusercontent.com/raelhubfunctions/rael-hub-gui/refs/heads/main/Source.lua"))()

local nameExecutor, versionExecutor = identifyexecutor()

getgenv().RaelHubGuiLoad = ScreenGui

local function setValueBar(valueText, valueSize)
  if not valueText then return end
  textInfo.Text = valueText
  if not valueSize then return end
  containerBar.Size = UDim2.new(valueSize, 0, containerBar.Size.Y.Scale, 0)
end

task.wait(1)

setValueBar(nameExecutor, 0.5)