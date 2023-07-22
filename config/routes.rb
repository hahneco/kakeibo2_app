Rails.application.routes.draw do
  get "/books", to: "books#index"
  post "/books", to: "books#create"
  # get "/books/new", to: "books#new" # 記å述順を注意。(/books/:idの後に書くと正しくアクションが処理されない ※上かひ比較していくため、idが上だとnewが正しく評価できない)
  get "/books/new", to: "books#new", as: "new_book"
  get "/books/:id/edit", to: "books#edit", as: "edit_book"
  get "/books/:id", to: "books#show", as: "book"

  patch "/books/:id", to: "books#update" # asでニックネームを指定していないが、指定がない場合は上のものを引き継ぐ。
  delete "/books/:id", to: "books#destroy" # Corrected delete route
end
