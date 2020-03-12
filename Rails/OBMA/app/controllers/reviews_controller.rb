class ReviewsController < ApplicationController
  

  def index
    if params[:id]
      @reviews=User.find(params[:id]).reviews
    else 
      @reviews=Review.all
    end
  end

  def new
    @review=Review.new
  end

  def show
    @review=Review.find(params[:id])
    respond_to do |format|
      format.html
      format.json {render json: @review}
    end
  end

  def edit
    @review=Review.find(params[:id])
  end

  def create
    @review=Review.new(review_params)
    if @review.save
      redirect_to reviews_path
    else
      render 'new'
    end
  end

  def update
     @review=Review.find(params[:id])
      if @review.update(review_params)
       redirect_to review_path
     else
      render 'edit'
      end
   end

  def destroy
    @review=Review.find(params[:id])
      if @review.destroy
       redirect_to reviews_path
     else
      render 'delete'
      end
  end

  def review_params
    params.require(:review).permit(:id,:rating,:user_id,:book_id)
  end
end
