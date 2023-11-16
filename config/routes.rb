Rails.application.routes.draw do
  # HTTPメソッド 'URIパターン', to: 'コントローラー名#アクション名'
  # postsというパスに、GETリクエストが届いた場合、postsコントローラの、indexというアクションを呼び出す
  get 'posts', to: 'posts#index' # postsコントローラの、indexアクションなんですね！
  get 'posts/new', to: 'posts#new'
  post 'posts', to: 'posts#create'

  get 'unko', to: 'unko#index'
end
