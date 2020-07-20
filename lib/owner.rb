require "pry"

class Owner

  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def cats
    Cat.all.select{|cat| cat if cat.owner == self}
  end

  def dogs
    Dog.all.select{|dog| dog if dog.owner == self}
  end

  def buy_cat(catt)
    Cat.all.each{|kitty| kitty.owner = self if kitty.name == catt}
  end

  def buy_dog(dog)
    Dog.all.each{|doggo| doggo.owner = self if doggo.name == dog}
  end

  def walk_dogs
    Dog.all.each{|dog| dog.mood = "happy"}
  end

  def feed_cats
    Cat.all.each{|cat| cat.mood = "happy"}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

end
