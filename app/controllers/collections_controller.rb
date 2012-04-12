class CollectionsController < ApplicationController

  def show
    @collection = Collection.find( params[:id] )
    @albums = @collection.albums
  end
end
