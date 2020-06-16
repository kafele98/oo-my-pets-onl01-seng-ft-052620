class Dog
  attr_accessor :mood
  attr_reader :name

  def initialize(name, new_owner)
    @name = name
    @@owners= new_owner 
  end
  
  def owner 
    @@owners 
  end 
end