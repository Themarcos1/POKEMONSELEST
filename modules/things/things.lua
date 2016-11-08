	function init()
	fp = { -- 50%
		items = {[13459]=0.7},
		itemsFG = {},
		creatures = {[399]=0.7, [416]=0.7, [595]=0.7, [908]=0.7, [1288]=0.7, [1473]=0.7, [1474]=0.7, [1572]=0.7, [1428]=0.5, [1430]=0.5},
		effects = {[21]=0.5},
		missEffects = {},
	}
	local str = "items\n  "
	for i,v in pairs(fp.items) do
	opacity = 0.5
	if v < 1 then
		opacity = v
	end
		str = str .. (opacity == v and i or v) .. "\n    opacity: "..(opacity).."\n    full-ground: false\n  "
	end
	for i,v in pairs(fp.itemsFG) do
	opacity = 0.5
	if v < 1 then
		opacity = v
	end
		str = str .. (opacity == v and i or v) .. "\n    opacity: "..(opacity).."\n    full-ground: true\n  "
	end
	str = str.. "\ncreatures\n  "
	for i,v in pairs(fp.creatures) do
	opacity = 0.5
	if v < 1 then
		opacity = v
	end
		str = str .. (opacity == v and i or v) .. "\n    opacity: "..(opacity).."\n  "
	end
	str = str.. "\neffects\n  "
	for i,v in pairs(fp.effects) do
	opacity = 0.5
	if v < 1 then
		opacity = v
	end
		str = str .. (opacity == v and i or v) .. "\n    opacity: "..(opacity).."\n  "
	end
	str = str.. "\nmissiles\n  "
	for i,v in pairs(fp.missEffects) do
	opacity = 0.5
	if v < 1 then
		opacity = v
	end
		str = str .. (opacity == v and i or v) .. "\n    opacity: "..(opacity).."\n  "
	end
	
	local f = io.open('./modules/things/things.otml', 'w')
	f:write(str)
	f:close()
		connect(g_game, {onClientVersionChange = onClientVersionChange})
	end

	function terminate()
	end
	
	function onClientVersionChange(version)
		g_things.loadOtml('/things/things.otml')
	end