class Cat
  attr_accessor :mood
	attr_reader :name

  def initialize(name, owner)
    @name = name
    @owner = owner 
  end

end