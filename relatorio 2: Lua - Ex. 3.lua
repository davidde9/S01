local n = tonumber(io.read())
local tabela = {}

for i = 1, n do
tabela[i] = tonumber(io.read())
end

for _, numero in ipairs(tabela) do
if numero % 2 == 0 then
    print(numero)
end
end
