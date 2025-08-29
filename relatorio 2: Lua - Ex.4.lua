function Calculadora(x, y, operador)
    if operador == "+" then
        return x + y
    elseif operador == "-" then
        return x - y
    elseif operador == "*" then
        return x * y
    elseif operador == "/" then
        return x / y
    else
        return "Erro: Operador inválido. Use +, -, * ou /"
    end
end

local x = io.read()
local y = io.read()
local operador = io.read()

print(Calculadora(x, y, operador))
