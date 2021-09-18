require './character'

class Monster < Character
  def appear
    puts "#{self.name} があらわれた!"
  end
  
  def attack(brave)
    puts "#{self.name} の攻撃!"
    puts "#{brave.name}は#{self.offense-brave.defense/2}のダメージを受けた!"
    brave.hp -= self.offense-brave.defense/2
    if brave.hp <= 0
      brave.hp = 0
      
    end
  end
  
  def point
    puts <<~TEXT
      【#{self.name}】HP: #{self.hp}
      *=*=*=*=*=*=*=*=*=*=*"
      TEXT
  end
  
  def dead
    puts "#{self.name} をやっつけた!"
  end
end