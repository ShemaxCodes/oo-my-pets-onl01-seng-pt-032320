require 'pry'

class Owner
 attr_reader :name 
  @@all = []
  
  def initialize(name) 
    @name = name 
    @@all << self 
  end 
  
  def name #tell it its name instead of asking. cant change name 
    @name 
  end 
  
  def species 
    @species = "human"
  end 
  
  def say_species
   return "I am a human."
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.count 
    @@all.count
  end 
  
  def self.reset_all
    @@all.clear
  end 
  
  def cats 
    Cat.all.select {|cat| cat.owner == self}
  end 
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end 
  
  def buy_cat(name)
<<<<<<< HEAD
    Cat.new(name, self)
  end 
  
  def buy_dog(name)
  Dog.new(name, self)
=======
     self.cats.name = name 
  end 
  
  def buy_dog(name)
    dogs << Dog.new(dogs, self)
>>>>>>> 5b338787d869ffb6139aa36da7818f3ce1b03db0
  end 
    
  def walk_dogs
    dogs.each {|dog| dog.mood = "happy"}
  end 
  
  def feed_cats
    cats.each {|cat| cat.mood = "happy"}
  end 
  
  def sell_pets
    cats.each {|cat| cat.mood = "nervous"}
    dogs.each {|dog| dog.mood = "nervous"}
    dogs.each {|dog| dog.owner = nil} 
    cats.each {|cat| cat.owner = nil}
  end 
  
  def list_pets 
    return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end 
end 
    

  
    