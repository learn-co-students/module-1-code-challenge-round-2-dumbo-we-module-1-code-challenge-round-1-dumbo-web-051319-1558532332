class Customer
  attr_reader :first_name, :last_name
    @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

      def add_review(restaurant, content, rating)
        Review.new(restaurant, self, rating, content)
      end

      def num_reviews
          Review.all.select {|review| review.customer == self}.count
      end

      def restaurants
        Review.all.select {|review| review.customer == self}.uniq
        binding.pry
      end

      def self.find_by_name(name)
        Review.all.find{|review| review.customer.full_name == name}
        #didnt get a chance to test
      end
      def self.find_by_first_name(name)
        Review.all.find_all{|review| review.customer.full_namestr.split(' ', 2) == name}
        #didnt get a chance to test
      end
      Review.all.find{|review| review.customer.full_name == name}



end
