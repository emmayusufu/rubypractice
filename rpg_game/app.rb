module Attackable
  def attack(target)
    damage = rand(min_damage..max_damage)
    target.hp-=damage
  end
end


class Character
  attr_accessor :name, :hp

  def initialize(name, hp = 100)
    @name = name
    @hp = hp
  end

  def alive?
    @hp > 0
  end
end


class Warrior < Character
  include Attackable

  def min_damage
    10
  end

  def max_damage
    20
  end
end

class Mage < Character
  include Attackable

  def min_damage
    5
  end

  def max_damage
    25
  end
end


def battle(player1, player2)
  puts "⚔️  #{player1.name} vs #{player2.name}!"

  turn = 0

  while player1.alive? && player2.alive?
    attacker, defender = turn.even? ? [player1, player2] : [player2, player1]

    attacker.attack(defender)

    if defender.hp <= 0
      puts "#{defender.name} has been defeated!"
      break
    else
      puts "#{defender.name} has #{defender.hp} HP left."
    end

    turn += 1
    sleep 0.5
  end

  puts "🏆 #{attacker.name} wins!"
end

warrior = Warrior.new("Conan")
mage = Mage.new("Merlin")

battle(warrior, mage)
