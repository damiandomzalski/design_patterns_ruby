# first example: decorate User informations

class User
  attr_reader :first_name, :last_name, :age

  def initialize(first_name:, last_name:, age:)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end
end

class UserDecorator < SimpleDelegator
  def full_name
    "#{first_name} #{last_name}"
  end
end

# second example: decorate Pizza prices

class Pizza
  def price
    20
  end
end

module VegePizza
  def price
    super + 5
  end
end

module LargePizza
  def price
    super + 15
  end
end
