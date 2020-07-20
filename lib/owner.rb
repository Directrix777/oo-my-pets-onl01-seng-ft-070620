

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
    Cat.all.select(|cat| return cat if cat.owner == self)
  end

  def dogs
    Dog.all.select(|dog| return dog if dog.owner == self)
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
