class AddThumbnailUrlToCollection < ActiveRecord::Migration
  def self.up
    add_column :collections, :thumbnail_url, :string
  end

  def self.down
    remove_column :collections, :thumbnail_url
  end
end
