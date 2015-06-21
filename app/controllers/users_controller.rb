class UsersController < ApplicationController
  def show
    Rails.logger.info("GOT ID: #{params[:id]}")
    render text: "Saw params[:id] = #{params[:id]}"
  end

  def index
    user_id = 'user-id/with/slashes'
    u = User.find_by_id user_id
    if !u
      u = User.new
      u.id = user_id
      u.save!
    end

    redirect_to u
  end
end
