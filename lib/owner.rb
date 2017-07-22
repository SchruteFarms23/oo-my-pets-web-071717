require 'pry'

class Owner
	attr_reader :species
	attr_accessor :name, :pets

  @@all = []
  def initialize(species)
  	@species = species
  	@@all << self
  	@pets = {:fishes => [], :dogs => [], :cats=> []}
  end

  def self.all
  	@@all
  end

  def self.reset_all
  	@@all =[]
  end

  def self.count
  	@@all.length
  end

  def say_species
  	"I am a #{@species}."
  end

  def buy_fish(fish_name)
  	fish = Fish.new(fish_name)
  	@pets[:fishes] << fish
  	# binding.pry
  end

  def buy_cat(cat_name)
  	cat = Cat.new(cat_name)
  	@pets[:cats] << cat
  end

  def buy_dog(dog_name)
  	dog = Dog.new(dog_name)
  	@pets[:dogs] << dog
  end

  def walk_dogs
  	@pets[:dogs].each do |dog| #iterates through each dog instance 
  		dog.mood = "happy" #changes each dogs mood to "happy"
  	end
  end

  def play_with_cats
  	@pets[:cats].each do |cat|
  		cat.mood = "happy"
  	end
  end

  def feed_fish
  	@pets[:fishes].each do |fish|
  		fish.mood = "happy"
  		# binding.pry
  	end
  end


  def sell_pets
  	@pets.each do |el,valu| 
  		# binding.pry
  		valu.each do |instance|
  			instance.mood = "nervous"
  	end
  	end
  	@pets.clear
  end

  def list_pets
  	num_of_fish = @pets[:fishes].length
  	num_of_dogs = @pets[:dogs].length
  	num_of_cats = @pets[:cats].length
  	"I have #{num_of_fish} fish, #{num_of_dogs} dog(s), and #{num_of_cats} cat(s)."
  end

end