--// Importar a função \\--
local ScreenGui, textInfo, containerBar, contentBar = loadstring(game:HttpGet("https://raw.githubusercontent.com/raelhubfunctions/rael-hub-gui/refs/heads/main/Source.lua"))()

local nameExecutor, versionExecutor = identifyexecutor()

getgenv().RaelHubGuiLoad = ScreenGui

local function setValueBar(valueTable, valueSize)
  
  if not valueTable or type(valueTable) ~= "table" then return end
  
  local valueText = valueTable.Text or "???"
  local valueColor = valueTable.Color or Color3.fromRGB(17, 236, 139)
  
  textInfo.Text = valueText
  textInfo.TextColor3 = valueColor
  
  if not valueSize then return end
  
  containerBar.Size = UDim2.new(valueSize, 0, containerBar.Size.Y.Scale, 0)
end

task.wait(1)

setValueBar({Text = nameExecutor}, 0.5)