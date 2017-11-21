class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [],:dogs => [],:cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    say_it = @species
    return "I am a #{say_it}."
  end

  def buy_fish (fish_name)
    new_fishpet = Fish.all.find{|fish|fish.name == fish_name}
    if new_fishpet == nil
      new_fishpet = Fish.new(fish_name)
    end
    @pets[:fishes] << new_fishpet
  end

  def buy_dog (fish_name)
    new_fishpet = Fish.all.find{|fish|fish.name == fish_name}
    if new_fishpet == nil
      new_fishpet = Fish.new(fish_name)
    end
    @pets[:fishes] << new_fishpet
  end

end
