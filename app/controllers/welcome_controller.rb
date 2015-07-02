class WelcomeController < ApplicationController
	
  def index
  	session[:user_id] = current_user.id
  	blog= Blog.find_by_user_id(current_user.id)
  	session[:blog_id]= blog.id
  	@articles = Article.all
  end

  def show
  	@article = Article.find(params[:id])
  end
end
