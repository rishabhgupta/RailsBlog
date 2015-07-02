class ResponsesController < ApplicationController
	def destroy
		@response = Response.find(params[:id])
		@comment = @response.comment
		@article = @comment.article
		@response.destroy
		redirect_to article_path(@article)
	end
end
