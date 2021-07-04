class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
   @book = Book.find(params[:id])
  end

  def create
    # 1,データを新規登録するためのインスタンス作成
    @book = Book.new(book_params)
    # # 2.データをデータベースに保存するためのsaveメソッド実行
    # book.save
    # # 3./booksへリダイレクト
    # redirect_to '/books'を削除して以下に変更
    if @book.save
      redirect_to book_path(@book.id), notice:"Book was successfully created"
    else
      @books = Book.all
      render :index
    end
  end

  def new
    @book = Book.new
  end

  def edit
   @book = Book.find(params[:id])
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path,notice:"Book was succeessfully destroyed"
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    if @book.save
     redirect_to book_path(@book.id),notice:"Book was successfully updated"
    else
     render :edit
    end
  end


 private
  #ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
