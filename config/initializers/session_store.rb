# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nicoleleighphoto.com_session',
  :secret      => '5e2795b4d994c65abfd5109be9c309da351007d1bbc57df103f11352cf439024e5da17cb7f2af94e9e4322a3f86db9156703c949cac66944aa7b8cb78da45e3d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
