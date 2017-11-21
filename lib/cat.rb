class Cat
  attr_accessor :mood
  attr_reader :name

  @@all_cat = []
  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def mood=(mood)
    @mood = mood
  end
end
