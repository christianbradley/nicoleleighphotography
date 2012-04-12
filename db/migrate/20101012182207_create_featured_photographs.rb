class CreateFeaturedPhotographs < ActiveRecord::Migration
  def self.up
    create_table :featured_photographs do |t|
      t.string :photo_file_name
      t.integer :photo_file_size
      t.string :photo_content_type

      t.timestamps
    end
  end

  def self.down
    drop_table :featured_photographs
  end
end
