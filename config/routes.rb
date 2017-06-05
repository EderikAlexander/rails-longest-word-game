Rails.application.routes.draw do
  get 'game', to: "longest_word_games#game"

  post 'result', to: "longest_word_games#result"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
