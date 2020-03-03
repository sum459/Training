class BooksController < ApplicationController

  def index
    @books=Book.all
  end

  def show
    @book=Book.find(params[:id])
  end

  def new
    @book=Book.new
  end

  def create
    @book=Book.new(book_params)
    if @book.save
      flash[:notice]="Book Created successfully!!!"
      redirect_to books_path
    else
      flash[:error]="Task Failed!!!"
      render :new
    end
  end

  def edit
    @book=Book.find(params[:id])
  end

  def update
    @book=Book.find(params[:id])
    if @book.update_attributes(book_params)
      flash[:notice]="Book Updated successfully!!!"
      redirect_to(book_path)
    else
      flash[:error]="Task Failed!!!"
      render :edit
    end
  end

  def delete
    @book=Book.find(params[:id])
  end

  def destroy
    @book=Book.find(params[:id])
    if @book.destroy
      flash[:notice]="Deleted Successfully!!!"
      redirect_to books_path
    else
      flash[:error]="Task failed!!!"
      render :delete
    end
  end

def book_params
  params.require(:book).permit(:id,:title,:author,:published_date,:category,:isbn,:price)
end

end
