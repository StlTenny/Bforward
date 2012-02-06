class AuthorizedController < ApplicationController
  before_filter :authenticate_user!
  check_authorization
  load_and_authorize_resource
  
  private
  def authenticate_owner!
    if user_signed_in? && (current_user.id == params[:user_id].to_i || current_user.admin?) # or something similar
      return true
    else
      redirect_to root_url, :notice => "You must have permission to access this category."
      return false
    end
  end
end