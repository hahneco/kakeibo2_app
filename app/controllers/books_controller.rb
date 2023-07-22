class BooksController < ApplicationController

  def index
    @books = Book.all
    # ActiveRecordのおかげでdetabaseにアクセスできる
  end
end
