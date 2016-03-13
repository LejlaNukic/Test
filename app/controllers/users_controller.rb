class UsersController < ApplicationController

  def new

  end

  def create
      @user=User.new(user_params)
      if @user.save
        redirect_to @user
      else
        flash[:error]="passwordi se ne poklapaju konju"
        redirect_to new_user_path
      end
  end

  def show
    @user=User.find(params[:id])
  end
  private
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end
end
