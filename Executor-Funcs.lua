local unique = {}
local fault = {}

for i,v in pairs(getgenv()) do
	table.insert(unique, i)
end

function CheckFunc(name, func)
	if func ~= nil then
		table.insert(fault, { name, true })
	else
		table.insert(fault, { name, false })
	end
end

CheckFunc("isfile", isfile)
CheckFunc("isfolder", isfolder)
CheckFunc("writefile", writefile)
CheckFunc("appendfile", appendfile)
CheckFunc("loadfile ", loadfile)
CheckFunc("readfile", readfile)
CheckFunc("makefolder", makefolder)
CheckFunc("delfolder", delfolder)
CheckFunc("listfiles", listfiles)
CheckFunc("delfile", delfile)

CheckFunc("request", request)

CheckFunc("getgenv", getgenv)
CheckFunc("getrenv", getrenv)
CheckFunc("getsenv", getsenv)
CheckFunc("getreg", getreg)
CheckFunc("getgc", getgc)

CheckFunc("getinstances", getinstances)
CheckFunc("getnilinstances", getnilinstances)
CheckFunc("getscripts", getscripts)
CheckFunc("getcallingscript", getcallingscript)
CheckFunc("getloadedmodules", getloadedmodules)
CheckFunc("getconnections", getconnections)

CheckFunc("firesignal", firesignal)
CheckFunc("fireclickdetector", fireclickdetector)
CheckFunc("fireproximityprompt", fireproximityprompt)
CheckFunc("firetouchinterest", firetouchinterest)

CheckFunc("isnetworkowner", isnetworkowner)
CheckFunc("isreadonly", isreadonly)
CheckFunc("iswindowactive", iswindowactive)
CheckFunc("sethiddenproperty", sethiddenproperty)

CheckFunc("setsimulationradius", setsimulationradius)
CheckFunc("gethiddenproperty", gethiddenproperty)
CheckFunc("getscriptclosure", getscriptclosure)
CheckFunc("getscripthash", getscripthash)
CheckFunc("getrawmetatable", getrawmetatable)
CheckFunc("setrawmetatable", setrawmetatable)
CheckFunc("setreadonly", setreadonly)

CheckFunc("keypress", keypress)
CheckFunc("keyrelease", keyrelease)
CheckFunc("mouse1click", mouse1click)
CheckFunc("mouse1press", mouse1press)
CheckFunc("mouse1release", mouse1release)
CheckFunc("mouse2click", mouse2click)
CheckFunc("mouse2press", mouse2press)
CheckFunc("mouse2release", mouse2release)
CheckFunc("mousescroll", mousescroll)
CheckFunc("mousemoverel", mousemoverel)
CheckFunc("mousemoveabs", mousemoveabs)
CheckFunc("hookfunction", hookfunction)
CheckFunc("hookmetamethod", hookmetamethod)
CheckFunc("newcclosure", newcclosure)
CheckFunc("loadstring", loadstring)
CheckFunc("checkcaller", checkcaller)
CheckFunc("islclosure", islclosure)
CheckFunc("dumpstring", getgenv().dumpstring)
CheckFunc("decompile", decompile)

CheckFunc("rconsoleprint", rconsoleprint)
CheckFunc("rconsoleinfo", rconsoleinfo)
CheckFunc("rconsolewarn", rconsolewarn)
CheckFunc("rconsoleerr", rconsoleerr)
CheckFunc("rconsoleclear", rconsoleclear)
CheckFunc("rconsolename", rconsolename)
CheckFunc("rconsoleinput", rconsoleinput)

CheckFunc("printconsole", printconsole)

CheckFunc("setclipboard", setclipboard)
CheckFunc("setfflag", setfflag)
CheckFunc("getnamecallmethod", getnamecallmethod)
CheckFunc("setnamecallmethod", setnamecallmethod)
CheckFunc("getsynasset", getsynasset)
CheckFunc("getspecialinfo", getspecialinfo)
CheckFunc("saveinstance", saveinstance)
CheckFunc("messagebox", messagebox)
CheckFunc("cache_replace", cache_replace)
CheckFunc("cache_invalidate", cache_invalidate)
CheckFunc("set_thread_identity", set_thread_identity)
CheckFunc("get_thread_identity", get_thread_identity)
CheckFunc("is_cached", is_cached)
CheckFunc("write_clipboard", write_clipboard)
CheckFunc("queue_on_teleport", queue_on_teleport)
CheckFunc("protect_gui", protect_gui)

--if syn then unprotect_gui = syn.unprotect_gui end
CheckFunc("unprotect_gui", unprotect_gui)
CheckFunc("secure_call", secure_call)
CheckFunc("create_secure_function", create_secure_function)
CheckFunc("run_secure_function", run_secure_function)
CheckFunc("websocket", websocket)

-- Notable & important

CheckFunc("bit", bit)

CheckFunc("crypt", crypt)
CheckFunc("debug", debug)
CheckFunc("Drawing", Drawing)

for i,v in ipairs(fault) do
	if v[2] then
		print(v[1] .. ": True")
	else
		print(v[1] .. ": False")
	end
end

local has = 0

for i,v in ipairs(fault) do
	if v[2] then
		has = has + 1
	end
end

print("This exploit has " .. has .. "/" .. #fault .. " universal functions aswell as " .. (#unique - #fault) .. " custom ones!")
