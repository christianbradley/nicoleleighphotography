class PageController < ApplicationController
  def index
    @featured_photos = FeaturedPhotograph.all
  end

  def about
  end

end
