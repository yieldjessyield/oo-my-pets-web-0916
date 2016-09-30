class Owner

attr_accessor :name, :pets
attr_reader :species

@@owners = []


  def initialize(species)
    self.class.all << self
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@owners
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  def say_species
    "I am a #{species}."
  end

  def pets
    @pets
  end

  def dogs
    self.pets[:dogs]
  end

  def cats
    self.pets[:cats]
  end

  def fishes
    self.pets[:fishes]
  end

  def buy_fish(name)
    name = Fish.new(name)
    self.pets[:fishes] << name
  end

  def buy_cat(name)
    name = Cat.new(name)
    self.pets[:cats] << name
  end

  def buy_dog(name)
    name = Dog.new(name)
    self.dogs << name
  end

  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
  self.cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
  self.fishes.each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets

    self.pets.each do |species, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets = {}
  end

  def list_pets
    "I have #{fishes.count} fish, #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
end



















