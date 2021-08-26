Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#HTTPメソッド 'URL' => 'コントローラ#アクション'
get 'todolists/new'
get 'top' => 'homes#top'
post'todolists' => 'todolists#create'


end
