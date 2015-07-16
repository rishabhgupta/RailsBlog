class WelcomeController < ApplicationController
	
  def index
  	session[:user_id] = current_user.id
  	if blog= Blog.find_by_user_id(current_user.id)
  	 session[:blog_id]= blog.id
    else
       redirect_to({:controller => 'UserDetails', :action => 'new', :id => current_user.id})
    end
  	@articles = Article.all
  end

  def show
  	@article = Article.find(params[:id])
  end
end
