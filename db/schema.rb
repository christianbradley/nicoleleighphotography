# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101012182207) do

  create_table "albums", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "collection_id"
    t.string   "picasa_url"
  end

  create_table "collections", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
  end

  create_table "featured_photographs", :force => true do |t|
    t.string   "photo_file_name"
    t.integer  "photo_file_size"
    t.string   "photo_content_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "links", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.string   "address"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", :force => true do |t|
    t.string   "from_name"
    t.string   "from_email"
    t.string   "subject"
    t.text     "message"
    t.string   "from_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "testimonials", :force => true do |t|
    t.string   "name"
    t.text     "testimony"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
