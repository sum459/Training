module Api
	module V1
	  class ReviewsController < CustomController
        def index
          @reviews = Review.order('id');
          render json: @reviews
        end

        def show
         @review=Review.find(params[:id])
         render json: @review
        end

        def create
         @review=Review.new(review_params)

         if @review.save
            render json: {status: "SUCCESS", message: "Saved Review", data: @review},status: :ok
         else
        	render json: {status: "Error", message: "Review not saved", data: @review.errors},status: :unprocessable_entity
         end

        end
        
        def update
         @review=Review.find(params[:id])
          if @review.update(review_params)
           render json: {status: "SUCCESS", message: "Update Review", data: @review},status: :ok
          else
           render json: {status: "Error", message: "Review not updated", data: @review},status: :unprocessable_entity
          end
        end

        def destroy
          @review = Review.find(params[:id])
          @review.destroy
          render json: {status: "SUCCESS", message: "Deleted Review", data: @review},status: :ok
        end


        private
        
        def review_params
          params.require(:review).permit(:id,:rating,:user_id,:book_id)
        end
  

      end
    end
end
