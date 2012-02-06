class ProfileController < AuthorizedController
before_filter :authenticate_owner!

  def profile
      if signed_in?
          redirect_to user_path(current_user)
      else
          redirect_to root_url
      end
  end
end