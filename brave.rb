require './character'

class Brave < Character
  def attack(monster)
    puts "#{@name} の攻撃!"
    puts "#{monster.name}に#{@offense-monster.defense/2}のダメージを与えた!"
    monster.hp -= @offense-monster.defense/2
    
    if monster.hp <= 0
      monster.hp = 0
    end
    
    
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