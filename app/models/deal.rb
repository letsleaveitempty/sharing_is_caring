class Deal < ActiveRecord::Base
  attr_accessible :title, :text

  geocoded_by :address
  after_validation :geocode

  acts_as_gmappable :process_geocoding => false

end
