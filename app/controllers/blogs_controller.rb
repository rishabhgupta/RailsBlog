class BlogsController < ApplicationController
	
  def new
  	@blog = Blog.new
  end

  def create
  	@user = User.find(params[:id])
  	@blog = Blog.new(blog_params)
		# @article.converter_uppercase
		if @user.blog = @blog
	  	redirect_to(:controller => 'welcome', :id => @user.blog.id)
		else
	  	render 'new'
		end
  end

  def show
  	@blog = Blog.find(session[:blog_id])
  end

  def edit
  	@blog = Blog.find(session[:blog_id])
  end

  def update
	  @blog = Blog.find(session[:blog_id])
	 
	  if @blog.update(blog_params)
	    redirect_to({:action => 'show', :id => @blog.id})
	  else
	    render 'edit'
	  end
	end


  private
		def blog_params
			params.require(:blog).permit(:name,:subtitle, :description)
		end
end
