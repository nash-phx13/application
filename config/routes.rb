Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#HTTPメソッド 'URL' => 'コントローラ#アクション'
get 'todolists/new'
get 'top' => 'homes#top'
post'todolists' => 'todolists#create'
get'todolists' => 'todolists#index'
get'todolists/:id' => 'todolists#show',as:'todolist' # .../todolists/1 や .../todolists/3 に該当
                                                     #as:'名前'は「名前付きルート」

end
