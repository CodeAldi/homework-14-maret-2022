require_relative 'monster'

class Player
  attr_accessor :name ,:player_monsters

  def initialize(name)
    @name = name
  end

  def add_monster(monster_list)
    @player_monsters = monster_list
  end
  
  def to_s
    puts "#{name}:"
    player_monsters * ", "
  end
=begin
  def stat
    puts "#{name}:"
    monster_stat(monsters)
    
  end

  def monster_stat(monsters)
    i = monsters.length
    j = 0
    monsters.each do |monster|
      
      if i > 1 && j == 0
        i -= 1
        j += 1
        print "#{monster},"
        elsif i > 1
        i -= 1
        print " #{monster},"
      else
        puts " #{monster}"
      end
    end
    puts nil
  end
=end
end