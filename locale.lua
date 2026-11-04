-- Lightweight localization without an AceLocale dependency

-- Report missing translations or contribute updates here:
local url = "https://github.com/MChambers1992/CopyPasta2/issues"

local addonName, vars = ...
local Ld, La = {}, {}
local locale = GAME_LOCALE or GetLocale()
if locale == "enGB" then locale = "enUS" end

vars.L = setmetatable({},{
    __index = function(t, s) 
      if locale ~= "enUS" and Ld[s] and
         not La[s] and url and not vars.locale_warning then
        vars.locale_warning = true
        print(string.format("*** %s needs help translating to your language! (%s)", addonName, locale))
	print("*** If you speak English, you can contribute by visiting:")
	print("*** "..url)
      end
      return La[s] or Ld[s] or rawget(t,s) or s 
    end
})

-- Translations are not loaded: CurseForge localization is not enabled for this project, so Ld and La stay empty
-- and the English text is used. Add per-locale tables to Ld (English reference) and La (current locale) here.
