class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.string :from_name
      t.string :from_email
      t.string :subject
      t.text :message
      t.string :from_phone

      t.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end
