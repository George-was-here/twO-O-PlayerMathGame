class Player
  attr_accessor :name, :lives 

  def initialize(name)
    @name = name
    self.lives = 3
  end

  p = Player.new('player1')
  puts p.name
  puts p.lives
  
end


  # class Person
  #   attr_accessor :name
  #   # attr_writer :name ## => This also works but doesn't allow getter access
  #   def initialize(name)
  #     @name = name
  #   end
  # end
  
  # bob = Person.new("Steve")
  # bob.name = "Bob"