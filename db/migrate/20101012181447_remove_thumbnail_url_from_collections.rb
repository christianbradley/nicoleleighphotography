class RemoveThumbnailUrlFromCollections < ActiveRecord::Migration
  def self.up
    remove_column :collections, :thumbnail_url
  end

  def self.down
    add_column :collections, :thumbnail_url, :string
  end
end
