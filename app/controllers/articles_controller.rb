class ArticlesController < ApplicationController
	# before_filter :printer_hello
	
	def new
		@article = Article.new
	end
	def index
		@articles = Blog.friendly.find(session[:blog_id]).articles
	end
	def edit
		@article = Article.friendly.find(params[:id])
	end
	def show
		@article = Article.friendly.find(params[:id])
	end

	def create
	 @article = Article.new(article_params)
	 @blog = Blog.friendly.find(session[:blog_id])
	 # @article.converter_uppercase
	  	if @blog.articles << @article
	    	redirect_to @article
	  	else
	    	render 'new'
	  	end
	end

	def update
	  @article = Article.friendly.find(params[:id])
	 
	  if @article.update(article_params)
	    redirect_to article_path(@article)
	  else
	    render 'edit'
	  end
	end

	def destroy
		@article = Article.friendly.find(params[:id])
		@article.destroy

		render 'index'
	end

	private
		
	def article_params
		params.require(:article).permit(:title,:text)
	end

	def printer_hello
		puts "Hello World"
	end
end
