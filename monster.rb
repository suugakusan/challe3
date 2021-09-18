require './character'

class Monster < Character
  def appear
    puts "#{@name} があらわれた!"
  end
  
  def attack(brave)
    puts "#{@name} の攻撃!"
    puts "#{brave.name}は#{@offense-brave.defense/2}のダメージを受けた!"
    brave.hp -= @offense-brave.defense/2
    if brave.hp <= 0
      brave.hp = 0
      
    end
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