local G2L = {};

local PlayerGui = game:GetService("CoreGui")

if PlayerGui:FindFirstChild("rael hub load") then
  PlayerGui:FindFirstChild("rael hub load"):Destroy()
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
G2L["4"]["Visible"] = false;
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["4"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Name"] = [[container load]];
G2L["4"]["BackgroundTransparency"] = 1;


-- StarterGui.rael hub load.bg image.container load.containerLoad
G2L["5"] = Instance.new("Frame", G2L["4"]);
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(59, 59, 59);
G2L["5"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["5"]["Size"] = UDim2.new(0.9, 0, 0, 100);
G2L["5"]["Position"] = UDim2.new(0.5, 0, 0.4, 0);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Name"] = [[containerLoad]];
G2L["5"]["BackgroundTransparency"] = 1;


-- StarterGui.rael hub load.bg image.container load.containerLoad.container bar
G2L["6"] = Instance.new("Frame", G2L["5"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["6"]["Size"] = UDim2.new(0, 324, 0, 10);
G2L["6"]["Position"] = UDim2.new(0.5, 0, 0.54, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Name"] = [[container bar]];


-- StarterGui.rael hub load.bg image.container load.containerLoad.container bar.container coner
G2L["7"] = Instance.new("UICorner", G2L["6"]);
G2L["7"]["Name"] = [[container coner]];
G2L["7"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.rael hub load.bg image.container load.containerLoad.container bar.bar
G2L["8"] = Instance.new("Frame", G2L["6"]);
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(17, 236, 139);
G2L["8"]["Size"] = UDim2.new(0.2, 0, 1, 0);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Name"] = [[bar]];


-- StarterGui.rael hub load.bg image.container load.containerLoad.container bar.bar.container coner
G2L["9"] = Instance.new("UICorner", G2L["8"]);
G2L["9"]["Name"] = [[container coner]];
G2L["9"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.rael hub load.bg image.container load.containerLoad.textinfo
G2L["a"] = Instance.new("TextLabel", G2L["5"]);
G2L["a"]["TextWrapped"] = true;
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["TextSize"] = 14;
G2L["a"]["TextScaled"] = true;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Roboto.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["a"]["TextColor3"] = Color3.fromRGB(17, 236, 139);
G2L["a"]["BackgroundTransparency"] = 1;
G2L["a"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["a"]["Size"] = UDim2.new(0, 200, 0, 40);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Text"] = [[Checking executor]];
G2L["a"]["Name"] = [[textinfo]];
G2L["a"]["Position"] = UDim2.new(0.5, 0, 0, 0);


-- StarterGui.rael hub load.bg image.container load.title
G2L["b"] = Instance.new("TextLabel", G2L["4"]);
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
G2L["c"] = Instance.new("TextLabel", G2L["2"]);
G2L["c"]["TextWrapped"] = true;
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["TextSize"] = 14;
G2L["c"]["TextScaled"] = true;
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Roboto.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["c"]["TextColor3"] = Color3.fromRGB(17, 236, 139);
G2L["c"]["BackgroundTransparency"] = 1;
G2L["c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["c"]["Size"] = UDim2.new(0.8, 0, 0, 43);
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["Text"] = [[Thank you for using rael hub]];
G2L["c"]["Name"] = [[thank you text]];
G2L["c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.rael hub load.bg image.system
G2L["d"] = Instance.new("LocalScript", G2L["2"]);
G2L["d"]["Name"] = [[system]];


local function runScriptLoad()
local script = G2L["d"];
	local TS = game:GetService("TweenService")
	local background = script.Parent
	local textThankYou = background:WaitForChild("thank you text")
	local containerLoad = background:WaitForChild("container load")
	
	local title = containerLoad:WaitForChild("title")
	local containerBarLoad = containerLoad:WaitForChild("containerLoad")
	local textInfo = containerBarLoad:WaitForChild("textinfo")
	local containerBar = containerBarLoad:WaitForChild("container bar")
	local conatinerBarContent = containerBar:WaitForChild("bar")
	
	background.ImageTransparency = 1
	background.Size = UDim2.new(0, 300, 0, 150)
	textThankYou.TextTransparency = 1
	
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
	TS:Create(textThankYou, FadeIn, {
		TextTransparency = 0
	}):Play()
	
	task.wait(2)
	
	local fadeOutTween = TS:Create(textThankYou, FadeOut, {
		TextTransparency = 1
	})
	
	fadeOutTween:Play()
	fadeOutTween.Completed:Wait()
	
	containerLoad.Visible = true
	title.TextTransparency = 1
	textInfo.TextTransparency = 1
	containerBar.BackgroundTransparency = 1
	conatinerBarContent.BackgroundTransparency = 1
	
	local titleFadeInAnim = TS:Create(title, FadeIn, {
		TextTransparency = 0
	})
	
	titleFadeInAnim:Play()
	titleFadeInAnim.Completed:Wait()
	
	local titleInfoFadeInAnim = TS:Create(textInfo, FadeIn, {
		TextTransparency = 0
	})
	
	titleInfoFadeInAnim:Play()
	titleInfoFadeInAnim.Completed:Wait()
	
	TS:Create(containerBar, FadeIn, {
		BackgroundTransparency = 0
	}):Play()
	
	TS:Create(conatinerBarContent, FadeIn, {
		BackgroundTransparency = 0
	}):Play()
	
	task.wait(0.5)
	
end;
runScriptLoad()

return G2L["1"], G2L["a"], G2L["8"]
