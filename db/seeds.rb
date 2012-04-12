# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)


# Create the collections
collection_names = %w(Weddings Engagements Maternity Children Commercial Themes)
collection_names.each do |name|
  unless Collection.find_by_name( name )
    Collection.create( :name => name, :thumbnail_url => "/images/gallery-#{name.downcase}.jpg" )
  end
end

# Create the albums
album_info = {
  :Weddings => [
    "Taryn and Matt, Crystal Point",
    "Jamie and Jonathon, Cairnwood Estate",
    "Danielle and Brad, Rittenhouse Hotel",
    "Lauren and Dean, Congress Hall",
    "Missy and Andy, Knowlton Mansion",
    "Tobi and Alex, Curtis Center",
    "Stephanie and Eric, Villanova",
    "Tyler Arboretum",
    "Glen Forde",
    "Cairnwood Estate",
    "Kelly and Ethan, Pearl S. Buck House",
    "Jasna Polana",
    "Jersey Shore Weddings",
    "Christina and Michael, Independence Visitors Center",
    "Dennis and Tom, Top of the Tower",
    "Maggie and Dutch, Perryville",
    "Philadelphia Weddings",
    "Doylestown Weddings",
    "Waterworks" ],
  :Engagements => ["Engagement"],
  :Maternity => ["Maternity"],
  :Children => ["Children", "Child Births"],
  :Commercial => ["Commercial"],
  :Themes => [
    "Carnie Folk",
    "Pin-Ups for Pit Bulls",
    "Zombie Land"
  ]
}

album_info.each do |collection_name,albums|
  collection = Collection.find_by_name( collection_name.to_s )
  albums.each do |album_name|
    unless collection.albums.find_by_name( album_name )
      album_url = album_name.gsub(/[^\w\d]/,'')
      collection.albums << Album.create( :name => album_name, :picasa_url => "http://picasaweb.google.com/MissNicoleLeigh/#{album_url}" )
    end
  end
end
