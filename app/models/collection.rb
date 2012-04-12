class Collection < ActiveRecord::Base
  has_many :albums
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :thumbnail
  has_attached_file :thumbnail

  def to_param
    "#{id}-#{name.gsub(/[^\w\d]/,'')}"
  end
end
