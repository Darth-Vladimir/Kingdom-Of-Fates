
local PlayDeck ={} -- clone of deck 
local deckName

local player = require("player")
local card = require( "card" )
local deck = player.LoadDeck()

function deck.setName(Name)
	deckName=Name
end
--Clone deck call this function at the start of the game
function deck.Clone()
	PlayDeck = table.copy(deck)
end
--Shuffle PlayDeck
function deck.Shuffle()
	math.randomseed( os.time() )
    local rand = math.random 
    assert( PlayDeck, "shuffleTable() expected a table, got nil" )
    local iterations = #PlayDeck
    local j
    
    for i = iterations, 2, -1 do
        j = rand(i)
        PlayDeck[i], PlayDeck[j] = PlayDeck[j], PlayDeck[i]
    end
end
--Draws the top card from the PlayDeck
function deck.Draw()
	local CurCard = unpack(PlayDeck,#PlayDeck)
	table.remove(PlayDeck,#PlayDeck)
	return CurCard
end

--Shuffle card into PlayDeck
function deck.Insert(SomeCard)
	table.insert(PlayDeck,#PlayDeck,SomeCard)
	deck.Shuffle()
end
--Get card a specific position
function deck.GetCard(position)
	if position <= #PlayDeck then
		local CurCard = unpack(PlayDeck,position)
		return CurCard
	end
end
--Remove card at position
function deck.removeCard(position)
	if position <= #PlayDeck then
		local CurCard = unpack(PlayDeck,position)
		table.remove(PlayDeck,position)
	end
end

return deck