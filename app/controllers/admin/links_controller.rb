class Admin::LinksController < AdminController
  def index
    @links = Link.all
  end
  def new
    @link = Link.new
  end
  def create
    @link = Link.new( params[:link] )
    if @link.save
      flash[:notice] = "Link Created"
      redirect_to admin_links_url
    else
      render :action => :new
    end
  end
  def edit
    @link = Link.find( params[:id] )
  end
  def update
    @link = Link.find( params[:id] )
    if @link.update_attributes( params[:link] ) 
      flash[:notice] = "Link Saved"
      redirect_to admin_links_url
    else
      render :action => :edit
    end
  end
  def destroy
    @link = Link.find( params[:id ] )
    @link.destroy
    flash[:notice] = "Link deleted"
    redirect_to admin_links_url
  end
end
    
