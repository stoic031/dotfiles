local log = hs.logger.new("input", "info")
local inputSources = {
	en = "com.apple.keylayout.ABC",
	vn = "com.apple.inputmethod.VietnameseIM.VietnameseTelex",
	jp = "com.apple.inputmethod.Kotoeri.RomajiTyping.Japanese",
}

local function setInput(sourceID)
	local current = hs.keycodes.currentSourceID()
	if current ~= sourceID then
		hs.keycodes.currentSourceID(sourceID)
		log.i("Switched input source to : " .. sourceID)
	end
end

local appRules = {
	["Ghostty"] = inputSources.en,
	["Xcode"] = inputSources.en,
	["Brave Browser"] = inputSources.vn,
}

local function applyInputRule(appName)
	local source = appRules[appName]
	if source then
		setInput(source)
	else
		log.i("No input rule for app: " .. appName)
	end
end

appWatcher = hs.application.watcher.new(function(appName, eventType, appObject)
	if eventType == hs.application.watcher.activated then
		applyInputRule(appName)
	end
end)

appWatcher:start()
hs.alert.show("Input rules loaded")
