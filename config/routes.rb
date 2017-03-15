Rails.application.routes.draw do

  ## ignore any periods not followed by `json` and the EOS
  # permit_periods_in = lambda do |*vars|
  #   match = /[^\/]+(?=\.json\z)|[^\/]+/
  #   contraints = vars.map{ |var| [var, match] }.to_h
  #   return {constraints: contraints}
  # end
  ## use in place of the 'constraints' option, e.g.:
  ## resources :users, **permit_periods_in.(:email)

  resources :users
  resources :posts

  root 'posts#index'

end
