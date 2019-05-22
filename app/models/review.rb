class Review
  attr_accessor :content, :reader
  attr_reader :restaurant, :customer

  @all

  def initialize(content, rating)
    @content =  content
    @rating = rating
    @all < self
  end


  def self.all
    @all
  end

  def rating
    if @rating > 5
      puts "Rating must be between 1 and 5"
  end


end
