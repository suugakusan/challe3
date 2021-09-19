require './character'

class Brave < Character
  def attack(monster)
    attackpoint = @offense-monster.defense/2
    puts "#{@name} の攻撃!"
    puts "#{monster.name}に#{attackpoint}のダメージを与えた!"
    monster.hp -= attackpoint
    monster.hp = 0 if monster.hp <= 0
  end
  
  def point
    puts <<~TEXT
      *=*=*=*=*=*=*=*=*=*=*
      【#{@name}】HP: #{@hp}
      TEXT
  end
  
  def dead
    puts "#{@name} はしんでしまった!"
  end
end