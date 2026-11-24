local LibraryUrl = "https://raw.githubusercontent.com/alsaadidawood205-byte/Op/alsaadidawood205-byte-delta-script-interface/redz_library_fixed%20(2).lua"
local redzlib = loadstring(game:HttpGet(LibraryUrl))()

if type(redzlib) ~= "table" or type(redzlib.MakeWindow) ~= "function" then
	error("SLANDER library failed to load", 0)
end

local Window = redzlib:MakeWindow({
	Title = "سكربت تجريبي",
	SubTitle = "by : سلندر",
	SaveFolder = "SLANDER_Rights",
	RightToLeft = true
})

Window:SetBackground("Image", {
	URL = "rbxassetid://104280168823225",
	Transparency = 0.1,
	Dim = 0.4
})

Window:SetTabStyle({
	Height = 30,
	CornerRadius = 8,
	TextSize = 12,
	IconSize = 16
})

local RightsTab = Window:MakeTab({
	Name = "الحقوق",
	Icon = "10709751939",
	RightToLeft = true
})

local function CopyToClipboard(value)
	if type(setclipboard) ~= "function" then
		warn("Clipboard is not supported by this executor")
		return
	end

	local success, err = pcall(setclipboard, value)
	if not success then
		warn("Failed to copy to clipboard: " .. tostring(err))
	end
end

RightsTab:AddButton({
	Name = "اضغط لنسخ حساب تيك توك",
	Callback = function()
		CopyToClipboard("1_.e11")
	end
})

RightsTab:AddButton({
	Name = "اضغط لنسخ يوزر انستا",
	Callback = function()
		CopyToClipboard("13x_88")
	end
})

RightsTab:AddButton({
	Name = "اضغط لنسخ يوزر سناب",
	Callback = function()
		CopyToClipboard("zxcma_17")
	end
})

RightsTab:AddButton({
	Name = "اضغط لنسخ يوزر ديسكورد",
	Callback = function()
		CopyToClipboard("kaido9392919_82")
	end
})
