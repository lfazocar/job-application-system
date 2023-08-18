class UsersController < ApplicationController
  before_action :set_user, only: :show

  # Role permissions
  before_action :authenticate_user!
  before_action do
    authorize_request(["admin"])
  end

  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end
end
