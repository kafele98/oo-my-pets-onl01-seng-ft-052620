class Dog
  attr_accessor :mood
  attr_reader :name, :owner 

  def initialize(name, owner)
    @name = name
    @owner = human
  end
end