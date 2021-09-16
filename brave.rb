require './character'

class Brave < Character
  def attack(monster)
    puts "#{self.name} の攻撃!"
    puts "#{monster.name}に#{self.offense-monster.defense/2}のダメージを与えた!"
    monster.hp -= self.offense-monster.defense/2
  end
end