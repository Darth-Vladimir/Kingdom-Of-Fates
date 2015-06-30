local card = {}

local attack
local defence
local effects
local image
local cardtype
local cardelement
local description
local cardname
local level
local cardparent

local curattack
local curdefence
local cureffects
local curcardelement
local curlevel

function card.new(Name, Description, Element, Type, Image, Effects, Attack, Defence, Level, Parent)
	cardname = Name
	description = Description
	cardelement = Element
	cardtype = Type
	image = Image
	effects = Effects
	attack = Attack
	defence = Defence
	level = Level
	cardparent = Parent
	
	curattack = attack
	curdefence = defence
	cureffects = effects
	curcardelement = cardelement
	curlevel = level
end

--Attack
function card.setAttack(newAttack)
	curattack = newAttack
end

function card.revertAttack()
	curattack = attack
end

function card.addAttack(amount)
	curattack = curattack + amount
end

function card.subtractAttack(amount)
	curattack = curattack - amount
end

function card.getAttack()
	return curattack
end

--Defence
function card.setDefence(newDefence)
	curdefence = newDefence
end

function card.revertDefence()
	curdefence = attack
end

function card.addDefence(amount)
	curdefence = curdefence + amount
end

function card.subtractDefence(amount)
	curdefence = curdefence - amount
end

function card.getDefence()
	return curdefence
end

--Effects
function card.getEffects()
	return curreffects
end

function card.getEffect(numb)
	if numb > #curreffects then
		numb = #curreffects
	elseif numb <= 0 then
		numb = 1
	end
	
	return curreffects[numb]
end

--COMPLETE
function card.addEffect(effect)
end

function card.removeEffect(numb)
end

function card.revertEffects()
	cureffects = effects
end
-----

function card.getFace()
	return image
end

function card.setFace(ref)
	image = ref
end

function card.getDescription()
	return description
end

function card.setDescription(desc)
	description = desc
end

function card.getName()
	return cardname
end

function card.setName(name)
	cardname = name
end

function card.setType(t)
	cardtype = t
end

function card.getType()
	return cardtype
end

function card.setLevel(l)
	curlevel = l
end

function card.getLevel()
	return curlevel
end

function card.revertLevel()
	curlevel = level
end

function card.getElement()
	return curcardelement
end

function card.setElement(element)
	curcardelement = element
end

function card.revertElement()
	curcardelement = cardelement
end

function card.getParent()
--0 Monster
--1 Spell
--2 Trap
--3 Field
	return cardparent
end

return card