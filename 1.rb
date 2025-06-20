puts "Hello"

print "World\n"

name = "Emmanuel"
age = 26


puts "My name is #{name} and I am #{age} years old."

if age > 18
    puts "You are an adult."
elsif age > 18 || age < 35
    puts "You are a youth"
else
    puts "You are a minor."
end


def greet(name)
    puts "Greetings to you, #{name}"
end

greet("Alice")

5.times do |i|
    puts "This is iteration number #{i + 1}"
end

array = [1,2,3,4]

array.each { |n| puts "Counting #{n}" }

h = {a:1, b:2}

h.each { |i,j| puts "#{i} #{j}" }

class Person
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def greet
    puts "Hello my name is #{@name} and I am #{@age} years old"
  end
end

p = Person.new("Kimaswa", 26)
p.greet()


class Animal
  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} makes a sound"
  end
end


class Dog < Animal
  def speak
    "#{@name} barks"
  end
end


class Cat < Animal
    def speak
      "#{super} #{@name} meows"
    end
end


dog = Dog.new("Rex")

puts dog.speak()


module Drivable
  def drive
    "Driving ..."
  end
end

class Car
  include Drivable
end

c = Car.new
puts c.drive


animals = [Dog.new("Rex"), Cat.new("Whiskers")]

animals.each { |n| puts n.speak()  }


unless 25 < 18
  puts "This is a less number"
end

i = 0

while i < 5 
  puts i
  i+=1
end

k = 0
until k == 5
  puts k*5
  k+=1
end

for i in 1..5
  puts i+2
end


puts h[:a]

puts 2.even?

user = nil

puts user&.name


# puts [1,2,3,4].inject(:+)
#
# puts [1,2,3,4].inject(0){|sum, n| sum+n}

puts [1, 2, 3, 4, 5, 6].group_by { |n| n.even? }

data = [
  { category: "Food", amount: 10 },
  { category: "Food", amount: 20 },
  { category: "Books", amount: 15 }
]

puts data.group_by{ |c| c[:category] }