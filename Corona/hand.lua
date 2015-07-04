local hand = {}

local deck = require("deck")

function hand.draw()
	local someCard = deck.Draw()
	table.insert(hand,#hand,someCard)
end

function hand.playCard(position)
	if position<=#hand then
		local CurCard = unpack(hand,position)
		table.remove(hand,position)
		return CurCard
	end
end

--For some reason a card is sent back to hand
function hand.returnCard(SomeCard)
	table.insert(hand,#hand,someCard)
end

return hand