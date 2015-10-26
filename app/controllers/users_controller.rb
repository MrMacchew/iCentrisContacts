class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

	
	def new
 		@user = User.new
 	end

	def index
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to user_path(@user.id), :notice => "Signed up!"
		else
			render "new"
		end
	end

	private
	
	def user_params
		params.require(:user).permit(:email,:password,:password_confirmation)
	end

	def set_user
		@user = User.find(params[:id])
	end
end
