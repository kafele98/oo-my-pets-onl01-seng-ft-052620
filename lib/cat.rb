 attr_accessor :mood, :owner
  attr_reader :name


    attr_reader :name	  @@all = []
    attr_accessor :mood, :owner	


    @@all = []	  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @owner = owner
    @@all << self
    owner.cats << self
  end