class Listing

@@all = []
attr_accessor :location

def initialize(location)
    @location = location
    @@all << self
end

def self.all
   @@all
end

def guests
  a = []
  Trip.all.each do |trip|
  if trip.listing == self
  a << trip.guest
end
end
return a
end

def trips
  Trip.all.select {|trip| trip.listing == self}
end

def trip_count
  count = 0
  Trip.all.each do |trip|
  if trip.listing == self
  count += 1
end
end
return count
end

def self.find_all_by_city(city)
  self.all.select {|listing| listing.location == city}
end


# def self.most_popular
#   @@all.sort_by { |listing| listing.trip_count }
# end

def self.most_popular
  h = {}
  @@all.each do |listing|
  h.merge!(listing.trip_count => listing.location)
  end
  return h.sort.reverse[0]
end

end
# --------------------------------------------------------------------

class Guest
@@all = []
attr_writer :name

def initialize(name)
  @name = name
  @@all << self
end

def self.all
   @@all
end

def listings
  array = []
  Trip.all.select do |trip|
    if trip.guest == self
      array << trip.listing
    end
end
return array
end

def trips
  Trip.all.select {|trip| trip.guest == self}
end

def trip_count
  array = []
  Trip.all.select do |trip|
    if trip.guest == self
      array << trip.listing
    end
end
return array.length
end

def self.pro_traveller
    @@all.select { |guest| guest.trip_count > 1 }
end

def self.find_all_by_name(name)
  @@all.select {|guest| guest.name == name}
end

end

# --------------------------------------------------------------------

class Trip
@@all = []
attr_writer :listing, :guest

def initialize(listing, guest)
  @listing = listing
  @guest = guest
  @@all << self
end

def listing
  @listing
end

def guest
  @guest
end

def self.all
   @@all
end

end
# --------------------------------------------------------------------
