class Cat
  attr_accessor :mood
	attr_reader :name, :owner 

  def initialize(name)
    @name = name
    @@owner 
  end

  def mood
    @mood
  end
end