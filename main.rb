# main.rb
#start Homework

require_relative 'monster'
require_relative 'player' # replace this with your class name

phpkachu = Monster.new('Phpkachu', 80, 50)
sqlrtle = Monster.new('Sqlrtle', 100, 20)
cppmander = Monster.new('Cppmander', 40, 80)
bashtoise = Monster.new('Bashtoise', 60, 60)
torterraform = Monster.new('Torterraform', 120, 10)

# Instantiate the objects of the class that model your players here
player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
# Add monsters to your players here
player1.add_monster([phpkachu,cppmander,torterraform])
## Player 1 should have phpkachu, cppmander, and torterraform
## Player 2 should have sqlrtle, cppmander, and bashtoise
player2.add_monster([sqlrtle,cppmander.clone,bashtoise])
# Print the current stats of each players here
player1.stat
player2.stat
puts '=======================Turn 1======================='
puts ''

# Make your Player 1's phpkachu attacks Player 2's cppmander here
#print "#{player1.name}'s "
puts "#{player1.name}'s ".concat(player1.monsters[0].attack(player2.monsters[1]))

# Print the current stats of each players here
puts
player1.stat
player2.stat
# Make your Player 2's bashtoise attacks Player 1's cppmander here
#print "#{player2.name}'s "
#player2.monsters[0].attack(player1.monsters[1])
puts "#{player2.name}'s ".concat(player2.monsters[0].attack(player1.monsters[1]))
# Print the current stats of each players here
puts
player1.stat
player2.stat

=begin
#quiz 1 & quiz 2
require_relative 'monster'

phpkachu = Monster.new('Phpkachu', 80, 50)
sqlrtle = Monster.new('Sqlrtle', 100, 20)
cppmander = Monster.new('Cppmander', 40, 80)
bashtoise = Monster.new('Bashtoise', 60, 60)
torterraform = Monster.new('Torterraform', 120, 10)
monsters = [phpkachu, sqlrtle, cppmander, bashtoise, torterraform]

monsters.each do |monster|
  puts monster
end

phpkachu.attack(cppmander)


monsters.each do |monster|
  puts monster
end

=end