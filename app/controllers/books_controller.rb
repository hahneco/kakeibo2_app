class BooksController < ApplicationController

  def index
    # ActiveRecordのおかげでdetabaseにアクセスできる
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new # 新規作成（空の家計簿モデルのインスタンス）
  end

  def create
    # ストロングパラメータ
    # リクエストに含まれる全てのパラメータ（POSTデータやurlに含まれるid等）はparamsという変数に格納される。ストロングパラメータを使用すれば、登録に必要なデータだけを取り出せる。
    book_params = params.require(:book).permit(:year, :month, :inout, :category, :amount)

     # book_paramsには画面から入力したデータが入っている。
     # それをもとに、Bookモデルを新しくインスタンス化している。ここでデータ入りのBookモデルインスタンスが生成できる。
    @book = Book.new(book_params)
    # 持っているデータをdatabaseに保存する
    if @book.save
    # 登録後は一覧画面も戻る
      redirect_to books_path
    else
      # renderは表示するファイルを指示するメソッド
      # バリデーションに引っかかってfalseか返ってきた場合、nweアクションで登録画面を表示する。※newメソッドへ移動するわけではない。
      render :new
    end
  end
end
