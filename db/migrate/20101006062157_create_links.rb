class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :website
      t.string :address
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end
end
