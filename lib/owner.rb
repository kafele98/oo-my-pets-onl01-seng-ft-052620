class Owner 
  attr_accessor :cats, :dogs 
  attr_reader :species 
  
  @@owners = []
  
  def initialize(name, species=("human"))
    @name=name 
    @species=species 
    @@owners << self 
    @cats = []
    @dogs = []
  end 
  
  def name 
    @name 
  end 
  
  
  def say_species
    "I am a #{@species}."
  end

   def self.all
    @@owners
  end
  
    def self.count
      @@owners.length 
    end
  
  def self.reset_all
    self.all.clear
  end

   def buy_cat(name)
     Cat.new(name, self)
    end 
  
  def buy_dog(name)
    Dog.new(name, self)
  end 
  
  def walk_dogs
   self.dogs.each {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end
  
   def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
        end
      animals.clear
    end
  end
  
  def list_pets
    "I have #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
  
  
end


