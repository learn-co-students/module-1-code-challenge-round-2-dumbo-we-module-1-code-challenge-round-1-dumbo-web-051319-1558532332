class Review
@@all = []
attr_reader :restaurant, :customer, :rating, :content

    def initialize
        @@all << self
    end  

end

