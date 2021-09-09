class UserSessionsController < ApplicationController
  include UserSessionsHelper

  def new
  end

  def create
    user = User.find_by(email: params[:user_session][:email])
    result = user.authenticate(params[:user_session][:password]) if user.present?
    if result.present?
      log_in_with user
      redirect_to top_pages_index_path, success: 'Login successful!'
    else
      flash.now[:danger] = 'Invalid email or password'
      render :new
    end
  end

  def destroy
  end
end
