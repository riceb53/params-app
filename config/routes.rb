Rails.application.routes.draw do
  get '/message' => 'querys#show_message'
  get '/mean_message' => 'querys#insult'
  get '/name' => 'querys#demo'
  get '/game/:new_guess' => 'querys#guess'
  get '/practice/:idaho/:montana' => 'querys#wild'
  get '/counter' => 'querys#counter'
  post '/show_a_new_message' => 'querys#show_the_message'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
