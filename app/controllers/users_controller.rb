class UsersController < ApplicationController

  def index
    @users=User.all
  end

  def show
    @user=User.find(params[:id])
  end

  def new
    @user=User.new
  end

  def create
    @user=User.new(user_params)
    if @user.save
      flash[:notice]="User Created successfully!!!"
      redirect_to(users_path)
    else
      render :new
    end
  end

  def edit
    @user=User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:notice]="User Updated successfully!!!"
      redirect_to(user_path)
    else
     
      render :edit
    end
  end

  def delete
    @user=User.find(params[:id])
  end

  def destroy
    @user=User.find(params[:id])
    if @user.destroy
      flash[:notice]="Deleted Successfully!!!"
      redirect_to(users_path)
    else
     
      render :delete
    end
  end

  def user_params
  params.require(:user).permit(:name,:contact,:email,:password,:confirm_password)
  end

  end
