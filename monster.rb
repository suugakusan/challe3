require './character'

class Monster < Character
  def appear
    puts "#{@name} があらわれた!"
  end
  
  def attack(brave)
    attackpoint = @offense-brave.defense/2
    puts "#{@name} の攻撃!"
    puts "#{brave.name}は#{attackpoint}のダメージを受けた!"
    brave.hp -= attackpoint
    brave.hp = 0 if brave.hp <= 0
  end
  
  def point
    puts <<~TEXT
      【#{@name}】HP: #{@hp}
      *=*=*=*=*=*=*=*=*=*=*"
      TEXT
  end
  
  def dead
    puts "#{@name} をやっつけた!"
  end
end