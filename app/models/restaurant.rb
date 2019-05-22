class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  def our_reviews
    Review.all.select {|post| post.restaurant == self}
  end

  def customers
    the_reviews = self.our_reviews
    the_names = the_reviews.map {|x| x.customer.fullname}
    the_names.uniq
  end

  def average_star_rating
    the_reviews = self.our_reviews
    the_ratings = the_reviews.map {|x| x.rating}
    total = the_ratings.inject {|sum, x| sum + x}
    average = total / the_ratings.size
    average
  end

  def longest_review
    # go into our reviews
    # go into the content section
    # for each content we will count each character/word in the content section and give them values
    # hash, max_by |k,v| v , hash.new(0)
    the_reviews = self.our_reviews
    the_content = the_reviews.map {|x| x.content}
    # the_content.collect {|x| x.split.size}
    the_count = Hash.new(0)
    the_content.each do |a|
      if the_count[a] == nil
        the_count[a]
      end


    the_content.collect {|x| x.split.size}
      # hash, max_by |k,v| v , hash.new(0)
      # see which of my values is the highest from that hash/array combo
  end

  end
