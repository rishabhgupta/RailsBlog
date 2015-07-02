class UserDetailsController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def edit
  	@user_details = UserDetail.find_by_user_id(params[:id])
  end

  def update
  	user = User.find(params[:id])
  	@user_details= user.user_detail
	  if @user_details.update_attributes(user_detail_params)
	    redirect_to({:action => 'show', :id => user.id})
	  else
	    render 'edit'
	  end
  end

  def new
  	@user = UserDetail.new
  end

  def create
  	@user = User.find(params[:id])
  	@user_details = UserDetail.new(user_detail_params)
		# @article.converter_uppercase
  	if @user.user_detail = @user_details
      #UserMailer.welcome_email(@user).deliver_later
    	redirect_to ({:controller => 'blogs', :action => 'new'})
  	else
    	render 'new'
  	end
  end

  private
	  def user_detail_params
	  	params.require(:user).permit(:first_name, :last_name, :age, :username)
	  end

end
