module Api
	module V1
	  class UsersController < ApplicationController
        def index
          @users = User.order('id');
          render json: {status: "SUCCESS", message: "Loaded Users", data: @users},status: :ok
        end

        def show
         @user=User.find(params[:id])
         render json: {status: "SUCCESS", message: "Loaded Users", data: @user},status: :ok
        end

        def create
         @user=User.new(user_params)

         if @user.save
            render json: {status: "SUCCESS", message: "Saved User", data: @user},status: :ok
         else
        	render json: {status: "Error", message: "User not saved", data: @user.errors},status: :unprocessable_entity
         end

        end
        
        def update
         @user=User.find(params[:id])
          if @user.update(user_params)
           render json: {status: "SUCCESS", message: "Update User", data: @user},status: :ok
          else
           render json: {status: "Error", message: "User not updated", data: @user},status: :unprocessable_entity
          end
        end

        def destroy
          @user = User.find(params[:id])
          @user.destroy
          render json: {status: "SUCCESS", message: "Deleted User", data: @user},status: :ok
        end


        private
        
        def user_params
        params.require(:user).permit(:name,:contact,:email,:password,:confirm_password)
        end
  

      end
    end
end
