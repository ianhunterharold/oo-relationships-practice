class Listing 
  attr_reader :city_name

  @@all = []

  def initialize(city)
    @city = city
    @@all << self 
  end 

  def self.all 
  @@all 
  end 

  def guests 
    Trips.all.select do |trip|
      trip.guest == self 
    end 
  end 

  def trips 
    Trips.all.select do |trip|
      trip.listing == self 
    end 
  end 

  def trip.count
    trips.count 
  end 

  def self.find_all_by_city(city)
    self.all.each do |listing|
      listing.city == self 
    end 
  end 

  def self.most_popular
    most_popular_city = nil
    most_popular_count = 0

    self.all.each do |listing|
      if self.city.count > most_popular_count
       self.city = most_popular_count
       most_popular_city = self.city 
      end 
    end 
    most_popular_city
  end 
#probably a more cleaner way to run. 

end 