class AddPicasaUrlToAlbum < ActiveRecord::Migration
  def self.up
    add_column :albums, :picasa_url, :string
  end

  def self.down
    remove_column :albums, :picasa_url
  end
end
