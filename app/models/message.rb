class Message < ActiveRecord::Base
  validates_presence_of :from_name, :message => "Please fill in your name"
  validates_presence_of :from_email, :message => "Please fill in your email address"
  validates_presence_of :message
  validates_format_of :from_email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end
