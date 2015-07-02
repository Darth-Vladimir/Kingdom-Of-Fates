local cards = {}
local deckName
local deckSize = 30
local composer = require( "card" )
function deck.setName(Name)
	deckName=Name
end
--Starter Deck
--loads a default starter deck from server into cards
for i = 1,deckSize do
	--Name, Description, Element, Type, Image, Effects, Attack, Defence, Level, Parent is retreived from server
	local card = card.new(Name, Description, Element, Type, Image, Effects, Attack, Defence, Level, Parent)
	table.insert(cards,#cards,card)
end