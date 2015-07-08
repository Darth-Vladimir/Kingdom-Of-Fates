local player = require("player")
local opposition = require("player")
local field = require("field")
local FunctionController = {
	{cardName = "someCard", effect = function() print("this belongs to someCard") end},
	{cardName = "someOtherCard",effect =function() print("this belongs to someOtherCard") end},
	{cardName ="Smoke Fiend" ,effect =function() end},--Is moeilike een moet die effect van magical item en artifacts ignore op card wat hom aanval
	{cardName ="Guerillas", effect=function() --select champion and send to graveYard if destroyed
	local opField = opposition.getField()
	local pos = --somefunction that gets pos from field by tapping card in monster field
	local card = opField.selectMonster(pos)
	field.destroy(card)
	end},
	{cardName ="Gremlin Cannonfodder", effect =function()
		local deck = player.getPlayDeck()
		local cards = unpack(deck,#deck - 3,#deck)
		return cards
	end},
}

function findCardEffectPos(cardName)
	for i = 1,#FunctionController do
		if FunctionController[i].cardName == cardName then
			return i
		end
	end
	return nill
end
--Dit word so gecall waar ookal die effect gebruik wil word
local pos = findCardEffectPos("someOtherCard") --Die cardName word hier deur gestuur om position in table te kry
FunctionController[pos].effect()
-----------------------------------------------------------
return FunctionController