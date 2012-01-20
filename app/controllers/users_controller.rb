class UsersController < ApplicationController
  #routes GET /users and GET /users.json
  before_filter :authenticate_user!
  load_and_authorize_resource
  
  def index
    @users = User.all
    
    respond_to do |format|
      format.html #automatically gets the html view
      format.json {render :json => @users}
    end
  end
  
  def show
   # @user = User.find(params[:id])
    
    respond_to do |format|
      format.html #automatically generates the html view
      format.json {render :json => @user}
    end
  end
  
  def new
    redirect_to new_user_registration_path
  end
  
  def edit
    redirect_to edit_user_registration_path
  end
end
