require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


listing1 = Listing.new("New York")
listing2 = Listing.new("Hong Kong")
listing3 = Listing.new("Berlin")

guest1 = Guest.new("Dennis")
guest2 = Guest.new("Kevin")
guest3 = Guest.new("Sean")

trip1 = Trip.new(listing1, guest2)
trip2 = Trip.new(listing2, guest1)
trip3 = Trip.new(listing3, guest3)
trip4 = Trip.new(listing1, guest1)
trip5 = Trip.new(listing3, guest1)
trip6 = Trip.new(listing1, guest3)


Pry.start

# Listing

# #guests
# returns an array of all guests who have stayed at a listing!!!!!!!!!

# #trips
# returns an array of all trips at a listing!!!!!!!!!!!!

# #trip_count!!!!!!!!!!!!
# returns the number of trips that have been taken to that listing!!!!!!!!!!!

# .find_all_by_city(city)!!!!!!!!!!!!!!
# takes an argument of a city name (as a string) and returns all the listings for that city

# .most_popular
# finds the listing that has had the most trips!!!!!!!!!





# Guest

# #listings
# returns an array of all listings a guest has stayed at !!!!!!!!!!!!!!!!

# #trips
# returns an array of all trips a guest has made !!!!!!!!!!!!!!!!!!

# #trip_count
# returns the number of trips a guest has taken!!!!!!!!!!!!!!!

# .all
# returns an array of all guests!!!!!!!!!!!!!!!!

# .pro_traveller
# returns an array of all guests who have made over 1 trip !!!!!!!!

# .find_all_by_name(name)
# takes an argument of a name (as a string), returns the all guests with that name !!!!!!!!!!



# Trip

# #listing
# returns the listing object for the trip!!!!!!!!!!!!

# #guest
# returns the guest object for the trip!!!!!!!!!!!!!
