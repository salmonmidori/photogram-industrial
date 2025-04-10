class UsersController < ApplicationController
  def show
    @user = User.find_by!(username: params.fetch(:username))
  end
  def liked
    @user = User.find_by!(username: params.fetch(:username))
  end
  def feed
    @user = User.find_by!(username: params.fetch(:username))
  end
  def discover
    @user = User.find_by!(username: params.fetch(:username))
  end
  def home
      if current_user
        # Redirect to the feed route using the current user's username.
        redirect_to feed_path(current_user.username)
      else
        # Render a landing page if no one is signed in.
        redirect_to "/users/sign_in"
      end
  end
end
