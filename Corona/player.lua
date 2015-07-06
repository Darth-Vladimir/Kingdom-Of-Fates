local card = require("card")

local player = {}
local cards = {}
local lifepoints -- Dink lifepoints moet 'n variable wees in game self.
local field -- Selfed vir field
local hand -- en hand
local deck = {}
local deckSize


function player.setName()
end
--Connects to server and loads cards
function player.LoadCards()
	--To Complete
end

function player.LoadDeck()
	--Starter Deck
	--loads a default starter deck from server into cards
	deckSize = --get deckSize from server
	for i = 1,deckSize do
		--Name, Description, Element, Type, Image, Effects, Attack, Defence, Level, Parent is retreived from server
		local CurCard = card.new(Name, Description, Element, Type, Image, Effects, Attack, Defence, Level, Parent)
		table.insert(deck,#deck,CurCard)
	end
end

function player.SaveDeck()
end

--Player receives a new card
function player.AddCard(card)
end

return player