require './character'
require './brave'
require './monster'


brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)

monster.appear

while brave.hp >= 0 && monster.hp >= 0 do
  brave.attack(monster) 
  break if  monster.hp == 0
  monster.attack(brave)
  break if  brave.hp == 0
  
  brave.point
  monster.point
end
brave.point
monster.point

if brave.hp == 0
  brave.dead
elsif monster.hp == 0
  monster.dead
end

