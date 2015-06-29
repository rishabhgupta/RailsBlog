class UserDetailsController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def edit
  	@user = UserDetail.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	@user_details= @user.user_detail
	  if @user_details.update(user_detail_params)
	    redirect_to({:action => 'show', :id => @user.id})
	  else
	    render 'edit'
	  end
  end

  private
	  def user_detail_params
	  	params.require(:user).permit(:first_name, :last_name, :age, :username)
	  end

end
