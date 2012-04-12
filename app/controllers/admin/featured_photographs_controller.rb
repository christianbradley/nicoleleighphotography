class Admin::FeaturedPhotographsController < AdminController
  def index
    @photos = FeaturedPhotograph.all
  end
  def new
    @photo = FeaturedPhotograph.new
  end
  def create
    @photo = FeaturedPhotograph.new( params[:featured_photograph] )
    if @photo.save
      flash[:notice] = "Photograph Saved"
      redirect_to :action => :index
    else
      render :action => :new
    end
  end
  def edit
    @photo = FeaturedPhotograph.find( params[:id] )
  end
  def update
    @photo = FeaturedPhotograph.find( params[:id] )
    if @photo.update_attributes( params[:featured_photograph] )
      flash[:notice] = "Photograph Saved"
      redirect_to :action => :index
    else
      render :action => :edit
    end
  end
  def destroy
    @photo = FeaturedPhotograph.find( params[:id] )
    @photo.destroy
    flash[:notice] = "Photograph Deleted"
    redirect_to :action => :index
  end
end
