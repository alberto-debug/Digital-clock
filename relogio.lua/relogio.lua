-- Função para limpar o terminal
function limpar_tela()
  if os.getenv("OS") == "Windows_NT" then
    os.execute("cls")
  else
    os.execute("clear")
  end
end

-- Função para exibir o relógio
function relogio_minimalista()
  while true do
    limpar_tela()

    -- Obter a hora atual
    local hora_atual = os.date("*t")
    local horas = string.format("%02d", hora_atual.hour)
    local minutos = string.format("%02d", hora_atual.min)
    local segundos = string.format("%02d", hora_atual.sec)

    -- Exibir o relógio estilizado
    print(string.rep("=", 30))
    print(string.format(" Relógio Minimalista "))
    print("\n        " .. horas .. ":" .. minutos .. ":" .. segundos .. "        \n")
    print(string.rep("=", 30))

    -- Esperar 1 segundo antes de atualizar
    os.execute("sleep 1") -- No Windows, pode ser necessário instalar o comando sleep
  end
end
end
-- Executar o relógio
relogio_minimalista()
