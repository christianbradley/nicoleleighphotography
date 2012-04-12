class Admin::TestimonialsController < AdminController
  def index
    @testimonials = Testimonial.all
  end
  def new
    @testimonial = Testimonial.new
  end
  def create
    @testimonial = Testimonial.new( params[:testimonial] )
    if @testimonial.save
      flash[:notice] = "Testimonial Saved"
      redirect_to admin_testimonials_url
    else
      render :action => :new
    end
  end
  def edit
    @testimonial = Testimonial.find( params[:id] )
  end
  def update
    @testimonial = Testimonial.find( params[:id] ) 
    if @testimonial.update_attributes( params[:testimonial] )
      flash[:notice] = "Testimonial Saved"
      redirect_to admin_testimonials_url
    else
      render :action => :edit
    end
  end
  def destroy
    @testimonial = Testimonial.find( params[:id] )
    @testimonial.destroy
    flash[:notice] = "Testimonial Deleted"
    redirect_to admin_testimonials_url
  end
end
