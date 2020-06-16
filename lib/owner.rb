class Owner 
  
  attr_reader :species 
  
  @@owners = []
  
  def initialize(name, species=("human"))
    @name=name 
    @species=species 
    @@owners << self 
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

   def buy_cat(cat_name)
    pets[:cats] << Cat.new(cat_name)
  end
  
  def buy_dog(dog_name)
    pets[:dogs] << Dog.new(dog_name)
  end
  
  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
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



owner = Owner.new 
owner.name("Hermione")
