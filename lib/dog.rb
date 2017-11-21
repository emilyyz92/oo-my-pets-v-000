class Dog
  # code goes here
  attr_accessor :mood
  attr_reader :name
  @@all_dog = []
  
  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def mood=(mood)
    @mood = mood
  end

end
