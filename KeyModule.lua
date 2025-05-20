local GuiModule = {}
local PlayerGui = game:GetService("CoreGui")
local nameExecutor, versionExecutor = identifyexecutor()
local Identifier = "raelhub"
local UserKey = ""
local PlayerService = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local UserID = game:GetService("RbxAnalyticsService"):GetClientId()

local RaelHubTradutor = loadstring(game:HttpGet("https://raw.githubusercontent.com/raelhubfunctions/Rael-Hub-functions/refs/heads/main/Rael%20Translation%20API/script.lua"))()
local NotificationManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/raelhubfunctions/Rael-Hub-functions/refs/heads/main/Rael%20notification%20system/script.lua"))()
local notification = NotificationManager.new()

-- FunÃ§Ã£o para validar a chave
function ValidateKey()
    local Url = "https://pandadevelopment.net/v2_validation?key=" .. UserKey .. "&service=" .. Identifier .. "&hwid=" .. UserID
    local DataFetch = request({
        Url = Url,
        Method = "GET"
    })

    if DataFetch.Success then
        local JsonData = HttpService:JSONDecode(DataFetch.Body)
        if JsonData["V2_Authentication"] == "success" then
            print("[Pelinda] Autenticado")
            return true
        else
            print("[Pelinda] Chave incorreta")
            return false
        end
    else
        error("[Pelinda] Falha na requisiÃ§Ã£o")
        return false
    end
end

-- FunÃ§Ã£o para gerar o link de pegar a key
function GetKey()
    return "https://pandadevelopment.net/getkey?service=" .. Identifier .. "&hwid=" .. UserID
end

if isfile and writefile and readfile then
  if not isfile("raelhubkey") then
    writefile("raelhubkey", "some_data_here") 
  end

  function GuiModule.CheckKeyFile(callback)
    task.spawn(function()
      if callback and isfile("raelhubkey") then
        local ketdata = readfile("raelhubkey")
        UserKey = ketdata
        if #ketdata > 0 and ValidateKey() then
          callback(true)
          GuiModule.Destroy()
        else
          callback(false)
        end
      end
    end)
  end

  function GuiModule.SaveKeyFile(key)
    task.spawn(function()
      if key and #key > 0 and isfile("raelhubkey") then
        writefile("raelhubkey", key) 
      end
    end)
  end

  function GuiModule.CheckPermission()
    return true
  end

else
  warn("The rael hub did not allow access to the folder")
  function GuiModule.CheckPermission()
    return false
  end
end

function GuiModule.RunInterface()
  local G2L = {};
  
  if PlayerGui:FindFirstChild("rael hub load") then
    PlayerGui:FindFirstChild("rael hub load"):Destroy()
  end
  
  function CreateButton(text, positionX)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 130, 0, 30)
    button.BackgroundColor3 = Color3.fromRGB(0, 170, 95)
    button.Text = text
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 16
    button.Position = UDim2.new(0, positionX, 0.22, 0)
    button.TextColor3 = Color3.new(1, 1, 1)
    button.Parent = G2L["4"]
  
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 10)
    corner.Parent = button
  
    local padding = Instance.new("UIPadding")
    padding.PaddingTop = UDim.new(0, 4)
    padding.PaddingBottom = UDim.new(0, 4)
    padding.PaddingLeft = UDim.new(0, 10)
    padding.PaddingRight = UDim.new(0, 10)
    padding.Parent = button
  
    return button
  end

  G2L["1"] = Instance.new("ScreenGui", PlayerGui);
  G2L["1"]["Name"] = [[rael hub load]];
  G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
  
  -- StarterGui.rael hub load.bg image
  G2L["2"] = Instance.new("ImageLabel", G2L["1"]);
  G2L["2"]["BorderSizePixel"] = 0;
  G2L["2"]["BackgroundColor3"] = Color3.fromRGB(91, 91, 91);
  G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
  G2L["2"]["Image"] = [[rbxassetid://18665679839]];
  G2L["2"]["Size"] = UDim2.new(0, 526, 0, 208);
  G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
  G2L["2"]["BackgroundTransparency"] = 1;
  G2L["2"]["Name"] = [[background image]];
  G2L["2"]["Position"] = UDim2.new(0.49935, 0, 0.5, 0);
  
  
  -- StarterGui.rael hub load.bg image.UIPadding
  G2L["3"] = Instance.new("UIPadding", G2L["2"]);
  G2L["3"]["PaddingTop"] = UDim.new(0, 20);
  G2L["3"]["PaddingRight"] = UDim.new(0, 20);
  G2L["3"]["PaddingLeft"] = UDim.new(0, 20);
  G2L["3"]["PaddingBottom"] = UDim.new(0, 20);
  
  
  -- StarterGui.rael hub load.bg image.container load
  G2L["4"] = Instance.new("Frame", G2L["2"]);
  G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
  G2L["4"]["AnchorPoint"] = Vector2.new(0.5, 0.0);
  G2L["4"]["Size"] = UDim2.new(1, 0,  0.5, 0);
  G2L["4"]["Position"] = UDim2.new(0.5, 0, 0.6, 0);
  G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
  G2L["4"]["Name"] = [[container buttons]];
  G2L["4"]["BackgroundTransparency"] = 1;
  
  -- StarterGui.rael hub load.bg image.container load.title
  G2L["b"] = Instance.new("TextLabel", G2L["2"]);
  G2L["b"]["TextWrapped"] = true;
  G2L["b"]["BorderSizePixel"] = 0;
  G2L["b"]["TextSize"] = 14;
  G2L["b"]["TextScaled"] = true;
  G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
  G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Roboto.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
  G2L["b"]["TextColor3"] = Color3.fromRGB(17, 236, 139);
  G2L["b"]["BackgroundTransparency"] = 1;
  G2L["b"]["AnchorPoint"] = Vector2.new(0.5, 0);
  G2L["b"]["Size"] = UDim2.new(0, 200, 0, 43);
  G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
  G2L["b"]["Text"] = [[RAEL HUB]];
  G2L["b"]["Name"] = [[title]];
  G2L["b"]["Position"] = UDim2.new(0.5, 0, 0.08929, 0);
  
 -- StarterGui.rael hub load.bg image.thank you text
  G2L["c"] = Instance.new("TextBox", G2L["2"]);
  G2L["c"]["TextWrapped"] = true;
  G2L["c"]["BorderSizePixel"] = 0;
  G2L["c"]["TextScaled"] = true -- Corrigido aqui
  G2L["c"]["BackgroundColor3"] = Color3.fromRGB(0, 138, 77);
  G2L["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Roboto.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
  G2L["c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
  G2L["c"]["BackgroundTransparency"] = 1;
  G2L["c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
  G2L["c"]["Size"] = UDim2.new(0.67, 0, 0, 30);
  G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
  G2L["c"]["Text"] = ""
  G2L["c"]["Name"] = [[input Text]];
  G2L["c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
  G2L["c"]["PlaceholderText"] = "Place key here";
  G2L["c"]["PlaceholderColor3"] = Color3.fromRGB(252, 252, 252);
  
  G2L["d"] = Instance.new("UICorner", G2L["c"]);
  G2L["d"]["Name"] = [[border radius]];
  G2L["d"]["CornerRadius"] = UDim.new(0, 10);
  
  G2L["e"] = Instance.new("UIPadding", G2L["c"]);
  G2L["e"]["PaddingTop"] = UDim.new(0.2, 0);
  G2L["e"]["PaddingRight"] = UDim.new(0.2, 0);
  G2L["e"]["PaddingLeft"] = UDim.new(0.2, 0);
  G2L["e"]["PaddingBottom"] = UDim.new(0.2, 0);
  
  -- StarterGui.rael hub load.bg image.system
  G2L["g"] = Instance.new("LocalScript", G2L["2"]);
  G2L["g"]["Name"] = [[system]];
  
  local closeButton = Instance.new("TextButton")
  closeButton.Size = UDim2.new(0, 30, 0, 30)
  closeButton.BackgroundColor3 = Color3.fromRGB(0, 170, 95)
  closeButton.Text = "X"
  closeButton.FontFace = Font.new([[rbxasset://fonts/families/Roboto.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
  closeButton.TextSize = 20
  closeButton.Position = UDim2.new(0, 430, 0, 20)
  closeButton.TextColor3 = Color3.new(1, 1, 1)
  closeButton.BackgroundTransparency = 1
  closeButton.TextTransparency = 1
  closeButton.Parent = G2L["2"]
  
  local closeRadius = Instance.new("UICorner")
  closeRadius.CornerRadius = UDim.new(0, 5)
  closeRadius.Parent = closeButton

  local getKey = CreateButton("Get key", 105)
  local verifyKey = CreateButton("Verify key", 255)
  
  getKey.MouseButton1Click:Connect(function()
    setclipboard(GetKey())
  end)
  
  closeButton.MouseButton1Click:Connect(function()
    GuiModule.Destroy()
  end)
  
  function GuiModule.FunctionCheckKeyButton(callback)
    if callback and type(callback) == "function" then
      verifyKey.MouseButton1Click:Connect(function()
        local InputValue = G2L["c"]["Text"]
        UserKey = InputValue
        if #InputValue > 0 and ValidateKey() then
          callback(true)
          GuiModule.SaveKeyFile(InputValue)
          GuiModule.Destroy()
        else
          callback(false)
        end
      end)
    end
  end
  
  local function runScriptLoad()
    local script = G2L["g"];
    local TS = game:GetService("TweenService")
    local background = script.Parent
    local inputText = background:WaitForChild("input Text")
    local containerButtons = background:WaitForChild("container buttons")

    local title = background:WaitForChild("title")

    background.ImageTransparency = 1
    background.Size = UDim2.new(0, 300, 0, 150)
    inputText.BackgroundTransparency = 1
    inputText.TextTransparency = 1
    title.TextTransparency = 1
    getKey.BackgroundTransparency = 1
    getKey.TextTransparency = 1
    verifyKey.BackgroundTransparency = 1
    verifyKey.TextTransparency = 1

    local FadeIn = TweenInfo.new(
      0.5,
      Enum.EasingStyle.Quad,
      Enum.EasingDirection.In
    )

  	local ScaleIn = TweenInfo.new(
      1,
      Enum.EasingStyle.Quint,
      Enum.EasingDirection.Out
    )

    local FadeOut = TweenInfo.new(
      0.5,
      Enum.EasingStyle.Quad,
      Enum.EasingDirection.Out
    )

    TS:Create(background, FadeIn, {
      ImageTransparency = 0
    }):Play()
    
    TS:Create(background, ScaleIn, {
      Size = UDim2.new(0, 526, 0, 208)
    }):Play()
    
    task.wait(0.4)

    TS:Create(title, ScaleIn, {
      TextTransparency = 0
    }):Play()
    TS:Create(closeButton, ScaleIn, {
      BackgroundTransparency = 0,
      TextTransparency = 0
    }):Play()
    task.wait(0.4)

    TS:Create(inputText, ScaleIn, {
      BackgroundTransparency = 0,
      TextTransparency = 0
    }):Play()

    task.wait(0.4)

    TS:Create(getKey, ScaleIn, {
      BackgroundTransparency = 0,
      TextTransparency = 0
    }):Play()
    TS:Create(verifyKey, ScaleIn, {
      BackgroundTransparency = 0,
      TextTransparency = 0
    }):Play()

    local function shake(frame, duration, strength)
      local originalPosition = frame.Position
      local startTime = tick()
  
      while tick() - startTime < duration do
        local offsetX = math.random(-strength, strength)
        local offsetY = math.random(-strength, strength)
  
        frame.Position = originalPosition + UDim2.new(0, offsetX, 0, offsetY)
        wait(0.02)
      end
  
      frame.Position = originalPosition
    end
    
    function GuiModule.Invalidkey()
      
    end
    
    function GuiModule.Destroy()
      G2L["1"]:Destroy()
    end
    
    task.wait(1)
    getgenv().RaelHubGuiLoad = G2L["1"]
    return true
  end
  
  return runScriptLoad()
end

GuiModule.RunInterface()

return GuiModule