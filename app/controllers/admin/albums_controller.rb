class Admin::AlbumsController < AdminController
  before_filter :find_collection

  def index
    @albums = @collection.albums
  end
  def new
    @album = @collection.albums.new
  end
  def create
    @album = @collection.albums.new( params[:album] )
    if @album.save
      flash[:notice] = "Album Saved"
      redirect_to admin_collection_albums_url( @collection )
    else
      render :action => :new
    end
  end
  def edit
    @album = @collection.albums.find( params[:id] )
  end
  def update
    @album = @collection.albums.find( params[:id] )
    if @album.update_attributes( params[:album] )
      flash[:notice] = "Album Saved"
      redirect_to admin_collection_albums_url( @collection )
    else
      render :action => :edit
    end
  end
  def destroy
    @album = @collection.albums.find( params[:id] )
    @album.destroy
    flash[:notice] = "Album Deleted"
    redirect_to admin_collection_albums_url( @collection )
  end

  protected

  def find_collection
    @collection = Collection.find( params[:collection_id] )
  end
end
