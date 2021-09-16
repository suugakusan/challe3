require './character'
require './brave'
require './monster'


brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)
#monster2 = Monster.new(name: "シドー", hp: 250, offense: 255, defense: 254)



monster.appear
#monster.attack(brave)
#monster2.appear
brave.attack(monster) 
monster.attack(brave)

while brave.hp >= 0 && monster.hp >= 0 do
  brave.attack(monster) 
  if monster.hp <= 0
    break
  end
  
  monster.attack(brave)
  if brave.hp <= 0
    break
  end
end

def hp
    puts <<~TEXT
            *=*=*=*=*=*=*=*=*=*=*
            【#{brave.name}】HP: #{brave.hp}
            【#{self.name}】HP: #{self.hp}
            *=*=*=*=*=*=*=*=*=*=*"
      TEXT
  
    if brave.hp <= 0
      puts <<~TEXT
           *=*=*=*=*=*=*=*=*=*=*
           【#{brave.name}】HP: 0
           【#{self.name}】HP: #{self.hp}
           *=*=*=*=*=*=*=*=*=*=*
           #{brave.name} はしんでしまった!
      TEXT
    end
  
    if self.hp <= 0
      puts <<~TEXT
           *=*=*=*=*=*=*=*=*=*=*
           【#{brave.name}】HP: #{brave.hp}
           【#{self.name}】HP: 0
           *=*=*=*=*=*=*=*=*=*=*
           #{self.name} をやっつけた!
       TEXT
    end
end