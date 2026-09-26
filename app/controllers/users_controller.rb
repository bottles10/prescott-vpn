class UsersController < ApplicationController

  def login
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html {redirect_to login_path, alert: "Login failed." }
        format.json { render json: @user, status: :created, location: @user }
        format.turbo_stream {}
      else
        format.html { render :login, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  def admin_prescott
    @users = User.ordered
  end


  private

  def user_params
    params.expect(user: [ :username, :password ])
  end
end
