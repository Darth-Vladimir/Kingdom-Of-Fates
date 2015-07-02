local field = {}

local MonsterField
local TrapField
local AreaField
-- Stefan edit: Might be some important variables
local MonsterFieldSize = 6
local TrapFieldSize = 6

function field.new()
	MonsterField = {}
	TrapField = {}
	AreaField = {}
end

function MonsterFieldIsFull()
	--Nie seker of lua tables by 0 of 1 begin nie?
	if #MonsterField==MonsterFieldSize then
		return true
	else
		return false
	end
end
function TrapFieldIsFull()
	--Nie seker of lua tables by 0 of 1 begin nie?
	if #TrapField==TrapFieldSize then
		return true
	else
		return false
	end
end


--Complete
--Stefan comment/Question: Assume the field.add method already knows the boundaries of the field
-- i.e. wether the MonsterField or TrapField is full or not and wether there is a AreaField card in play or not already
function field.add(Card)
	if (Card.getParent() == 0) then
		table.insert(MonsterField,#MonsterField,Card)
	elseif (Card.getParent() == 1) then
		table.insert(TrapField,#MonsterField,Card)
	elseif (Card.getParent() == 2) then
		table.insert(TrapField,#MonsterField,Card)
	elseif (Card.getParent() == 3) then
		table.insert(AreaField,#MonsterField,Card)
	end
end

return field