class MakeAlbumChildOfCollection < ActiveRecord::Migration
  def self.up
    add_column :albums, :collection_id, :integer
    remove_column :albums, :thumbnail_url
  end

  def self.down
    remove_column :albums, :collection_id
    add_column :albums, :thumbnail_url, :string
  end
end
