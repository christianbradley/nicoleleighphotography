class FeaturedPhotograph < ActiveRecord::Base
  validates_presence_of :photo
  has_attached_file :photo
end
