module Api
	module V1
	  class UsersController < ApplicationController
        def index
          users = User.order('id');
          render json: {status: "SUCCESS", message: "Loaded Users", data: users},status: :ok
        end
      end
    end
end
