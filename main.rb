require './character'
require './brave'
require './monster'


brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)


monster.appear

while brave.hp >= 0 && monster.hp >= 0 do
  brave.attack(monster) 
  if monster.hp <= 0
    monster.hp = 0
    brave.point
    monster.point
    monster.dead
    break
  end
  
  monster.attack(brave)
  if brave.hp <= 0
    brave.hp = 0
    brave.point
    monster.point
    brave.dead
    break
  end
  
  brave.point
  monster.point
end

monster2 = Monster.new(name: "シドー", hp: 250, offense: 255, defense: 254)

monster2.appear

while brave.hp >= 0 && monster2.hp >= 0 do
  brave.attack(monster2) 
  if monster2.hp <= 0
    monster2.hp = 0
    brave.point
    monster2.point
    monster2.dead
    break
  end
  
  monster2.attack(brave)
  if brave.hp <= 0
    brave.hp = 0
    brave.point
    monster2.point
    brave.dead
    break
  end
  
  brave.point
  monster2.point
end