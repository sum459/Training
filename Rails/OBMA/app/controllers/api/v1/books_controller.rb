module Api
	module V1
	  class BooksController < CustomController
        def index
          @books = Book.order('id');
          render json: @books
        end

        def show
         @book=Book.find(params[:id])
         render json: @book
        end

        def create
         @book=Book.new(book_params)

         if @book.save
            render json: {status: "SUCCESS", message: "Saved Book", data: @book},status: :ok
         else
        	render json: {status: "Error", message: "Book not saved", data: @book.errors},status: :unprocessable_entity
         end

        end
        
        def update
         @book=Book.find(params[:id])
          if @book.update(book_params)
           render json: {status: "SUCCESS", message: "Update Book", data: @book},status: :ok
          else
           render json: {status: "Error", message: "Book not updated", data: @book},status: :unprocessable_entity
          end
        end

        def destroy
          @book = Book.find(params[:id])
          @book.destroy
          render json: {status: "SUCCESS", message: "Deleted Book", data: @book},status: :ok
        end


        private
        
        def book_params
        params.require(:book).permit(:id,:title,:author,:published_date,:category,:isbn,:price)
        end
  

      end
    end
end
