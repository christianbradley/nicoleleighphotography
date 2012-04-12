class AddThumbnailToCollections < ActiveRecord::Migration
  def self.up
    add_column :collections, :thumbnail_file_name, :string
    add_column :collections, :thumbnail_content_type, :string
    add_column :collections, :thumbnail_file_size, :integer
  end

  def self.down
    remove_column :collections, :thumbnail_file_name
    remove_column :collections, :thumbnail_content_type
    remove_column :collections, :thumbnail_file_size
  end
end
