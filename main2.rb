require './character'
require './brave'
require './monster'


brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
monster = Monster.new(name: "シドー", hp: 250, offense: 255, defense: 254)

monster.appear

while brave.hp >= 0 && monster.hp >= 0 do
  brave.attack(monster) 
  if monster.hp != 0
    monster.attack(brave)
  end
  brave.point
  monster.point
  break if brave.hp == 0 || monster.hp == 0 
end

brave.hp == 0 ? brave.dead : monster.dead