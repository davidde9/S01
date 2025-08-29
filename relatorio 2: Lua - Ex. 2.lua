function maiorValor(tabela)

    local maior = tabela[1]

    for i = 2, #tabela do
        if tabela[i] > maior then
            maior = tabela[i]
        end
    end
    return maior
end

local n = tonumber(io.read())

local numeros = {}
for i = 1, n do
    numeros[i] = tonumber(io.read())
end

print(maiorValor(numeros))
