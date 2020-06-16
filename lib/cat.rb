class Cat
  attr_accessor :mood
	attr_reader :name

  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @@owner = hermione 
  end

  def mood
    @mood
  end
end