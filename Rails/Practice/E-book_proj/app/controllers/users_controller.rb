class UsersController < ApplicationController
  

  def index
    @users=User.all
    @users.search(params[:search])
  end

  def new
    @user=User.new
  end

  def show
    @user=User.find(params[:id])
    respond_to do |format|
      format.html
      format.json {render json: @user}
    end
  end

  def edit
    @user=User.find(params[:id])
    
  end

  def create
    @user=User.new(user_params)
    if @user.save
      redirect_to(users_path)
    else
      render :new    
    end
  end

  def update
    @user=User.find(params[:id])
    if @user.update(user_params)
      redirect_to(user_path)
    else
      render :edit
    end
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

  private
  def user_params
  params.require(:user).permit(:name,:contact,:email,:password,:confirm_password)
  end
  
end
