class UsersController < ApplicationController

  def index
  # @users = User.all
   @page = params.fetch(:page, 0).to_i
   @users = User.offset(@page*5).limit(5)
   @records = User.count
       
   if params[:search]
    @users = User.where("name ilike ? or contact ilike ? or email ilike ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%").or(User.where("is_deleted::TEXT ilike ?", "#{params[:search]}"))
    @page = params.fetch(:page, 0).to_i
    @users = @users.limit(5).offset(@page*5)
    @records=@users.count  
   else
    @page = params.fetch(:page, 0).to_i
    @users = @users.limit(5).offset(@page*5)
   
   end
   
   @users = @users.order("#{params[:sort]} #{params[:direction]}")
   
  end

  def show
    @user=User.find(params[:id])
    if (@user.is_deleted)
      flash[:notice]="#{@user.name} is soft deleted so can't show User info!!!"
      redirect_to(users_path)
    end
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
   


   def is_delete
    @user=User.find(params[:id])
     if (@user.is_deleted)
      @user.update(is_deleted: false)
      flash[:notice]="Reverted soft delete state of #{@user.name}!!!"
     else
      @user.update(is_deleted: true)
      flash[:notice]="#{@user.name} is soft deleted.!!!"
    end
     redirect_to(users_path)
   end

  def user_params
  params.require(:user).permit(:name,:contact,:email,:password,:confirm_password)
  end

  end
