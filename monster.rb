require './character'

class Monster < Character
  def appear
    puts "#{self.name} があらわれた!"
  end
  
  def attack(brave)
    while brave.hp >= 0 && self.hp >= 0 do
      brave.attack(self)
      self.hp -= brave.offense-self.defense/2
      if self.hp <= 0
        break
      end
      
      puts "#{self.name} の攻撃!"
      puts "#{brave.name}は#{self.offense-brave.defense/2}のダメージを受けた!"
      brave.hp -= self.offense-brave.defense/2
      if brave.hp <= 0
        break
      end
      puts <<~TEXT
            *=*=*=*=*=*=*=*=*=*=*
            【#{brave.name}】HP: #{brave.hp}
            【#{self.name}】HP: #{self.hp}
            *=*=*=*=*=*=*=*=*=*=*"
      TEXT
   end
  
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
end