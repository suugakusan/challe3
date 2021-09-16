require './character'

class Monster < Character
  def appear
    puts "#{self.name} があらわれた!"
  end
  
  def attack(brave)
    puts "#{self.name} の攻撃!"
    puts "#{brave.name}は#{self.offense-brave.defense/2}のダメージを受けた!"
    brave.hp -= self.offense-brave.defense/2
  end
end