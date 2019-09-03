class Guest
  
  @@all = []

  def initialize
    @@all << self 
  end 

  def self.all 
    @@all 
  end 

  def listings
    all_listings_for_guest = []
     Trips.all.each do |trip|
        if trip.listing == self 
          all_listings_for_guest << trip.listing
        end 
      end 
      all_listings_for_guest
  end 

  #Trips.all.select do |trip|
  #trip.listing = self 
#end 
#end 
  def trips 
    Trips.all.each do |trip|
      trip 
  end 

  #return to airbnb
  


  
end 