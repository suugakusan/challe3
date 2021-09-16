require './brave'
require './monster'


brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)
monster2 = Monster.new(name: "シドー", hp: 250, offense: 255, defense: 254)



#monster.appear
#monster.attack(brave)
monster2.appear
monster2.attack(brave)