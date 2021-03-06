require 'pry'
class Owner
 attr_reader :species
 attr_accessor :name, :pets
  @@all = []
  @@count = []

  def initialize(species)
    @species = species
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
    @@count << self
  end

def self.reset_all
  @@count.clear
end


def self.count
  @@count.length
end

def self.all
    @@all
  end
def say_species
 "I am a human."
end

def buy_fish(name)
  pets[:fishes] << Fish.new(name)
end

def buy_cat(name)
  pets[:cats] << Cat.new(name)
end

def buy_dog(name)
  pets[:dogs] << Dog.new(name)
end

def walk_dogs
  @pets[:dogs].each do |dog|
    dog.mood = "happy"
  end
end

def play_with_cats
  @pets[:cats].each do |cat|
    cat.mood = "happy"
  end
end

def feed_fish
  @pets[:fishes].each do |fish|
    fish.mood = "happy"
  end
end

def sell_pets
  @pets.each do |k,v|
    v.each do |mood|
        mood.mood = "nervous"
    end
      @pets[k].clear
  end
  @pets
end

def list_pets

  "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  # “I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."

end

end # end of class method
