local field = {}

local MonsterField
local TrapField
local AreaField

function field.new()
	MonsterField = {}
	TrapField = {}
	AreaField = {}
end

--Comp[lete
function field.add(Card)
	if (Card.getParent() == 0) then
		MonsterField.add
	elseif (Card.getParent() == 1) then
	elseif (Card.getParent() == 2) then
	elseif (Card.getParent() == 3) then
	end
end

return field