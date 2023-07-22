class BooksController < ApplicationController

  def index
    # ActiveRecordのおかげでdetabaseにアクセスできる
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end
end
