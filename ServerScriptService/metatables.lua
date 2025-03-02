local _minhaTable = {a = 10}
local minhaTable = {}
local metaTable = {
	__index = function(t, index)
		print("index acessado: " .. index)
		return _minhaTable[index]
	end
}
setmetatable(minhaTable, metaTable)

print(minhaTable.a)
print(minhaTable.b)
