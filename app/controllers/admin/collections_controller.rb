class Admin::CollectionsController < AdminController
  layout "admin"

  def index
    @collections = Collection.all
  end
  def new
    @collection = Collection.new
  end
  def create
    @collection = Collection.new( params[:collection] )
    if @collection.save
      flash[:notice] = "Collection saved"
      redirect_to :action => :index
    else
      render :action => :new
    end
  end
  def destroy
    Collection.find( params[:id] ).destroy
    redirect_to :action => :index
  end
  def edit
    @collection = Collection.find( params[:id] )
  end
  def update
    @collection = Collection.find( params[:id] )
    if @collection.update_attributes( params[:collection] )
      flash[:notice] = "Collection saved"
      redirect_to :action => :index
    else
      render :action => :edit
    end
  end
end
