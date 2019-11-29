class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    # @current_user = current_user
    @all_users = User.all
  end


end
