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
    self.cats.each do |cat|
      self.cats.delete(cat)
      cat.owner = nil 
      cat.mood = "nervous"
    end 
    self.dogs.each do |dog|
      self.dogs.delete(dog)
      dog.owner = nil 
      dog.mood = "nervous"
    end 
  end 
  
  def list_pets 
    number_of_dogs = self.dogs.count 
    number_of_cats = self.cats.count 
    "I have #{number_of_dogs} dog(s), and #{number_of_cats} cat(s)."
  end 
  
  
end


