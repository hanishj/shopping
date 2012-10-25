class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end
  
  def show
    
  end
  
  def role
    logger.info"I am Here"
    @role = params[:role_id]
    logger.info"@role#{@role.inspect}"
     render :js => "$('#role').html(#{@role})"
  end
  
end
