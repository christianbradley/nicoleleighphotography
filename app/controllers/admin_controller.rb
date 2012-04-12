class AdminController < ApplicationController
  layout 'admin'
  before_filter :authenticate

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "nicole" && password == "rizzel"
    end
  end
end
