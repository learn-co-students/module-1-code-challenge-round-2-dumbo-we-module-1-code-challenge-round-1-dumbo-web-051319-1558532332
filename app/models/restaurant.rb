class Restaurant
  attr_reader :name

  @all = []

  def initialize(name)
    @name = name
    @all < self
  end

def self.all
  @all
end

def find_by_name(name)
  @all.find do |name|
    self == name
end
end 

end
