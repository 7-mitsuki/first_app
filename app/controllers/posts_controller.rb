# コントローラはクラスである（ApplicationContorollerを継承した）
class PostsController < ApplicationController
  # コントローラに用意したいアクション名のインスタンスメソッドを用意する
  # コントローラに対するアクションを定義する
  def index
    # @post = 'これはコントローラーで定義したインスタンス変数を確認するための文字列です'
    # @post = Post.find(1)
    @posts = Post.all
  end

  def new; end

  def create
    # モデル名.create( カラム名: データ) → 引数で指定したデータをカラムに保存
    # リクエストに含まれたパラメータはparamsに格納されている
    Post.create(content: params[:content])

    # '/posts'にリダイレクト('/posts'にGETメソッドを送信したのと同じビューを返す？)
    redirect_to('/posts')
  end
end
