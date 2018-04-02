Rails.application.routes.draw do
  get '/index' => 'home#index'
  get '/crawl' => 'home#crawl'
end
