class Cat
  attr_accessor :mood
	attr_reader :name

  def initialize(name, new_owner)
    @name = name
    @owner = new_owner 
  end

  def owner 
    @owner 
  end 
end