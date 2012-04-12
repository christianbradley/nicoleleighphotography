class Album < ActiveRecord::Base
  belongs_to :collection
  validates_presence_of :collection
  validates_presence_of :name
  validates_presence_of :picasa_url
  validates_uniqueness_of :name, :scope => :collection_id
  validates_uniqueness_of :picasa_url

  def to_param
    "#{id}-#{name.gsub(/[^\w\d]/,'')}"
  end
end
