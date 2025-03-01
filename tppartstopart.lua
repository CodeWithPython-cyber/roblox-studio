-- Esse código pega uma pasta chamada Parts e pega todas as parts dentro dela e teleporta para uma Part chamada "TpPart" no workspace

-- Requirimentos:
-- 1. Uma part no workspace
-- 2. Uma pasta com as parts dentro dela (pode ser qualquer quantidade, desde que os nomes sejam só "Part"
-- 3. Ter um script no workspace com qualquer nome

-- Agora é só dar Play no jogo e ver o resultado
-- Obs: As parts serão teletransportadas para a Part chamada "TpPart" depois de 5 segundos, por causa do task.wait(5).

task.wait(5)
local Parts = workspace.Parts:GetChildren()

for _, part in ipairs(Parts) do
	part.CFrame = workspace.TpPart.CFrame
end
