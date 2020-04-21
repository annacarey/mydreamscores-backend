Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #wrapper routes
  get '/aws', to: 'amazon_wrappers#client'
  get '/google', to: 'google_drive_wrappers#client'

  #below not yet used
  # get '/journal-entries/:id', to: 'journal_entries#show', as: "journal_entry"

  #user routes
  post '/login', to: 'users#login'
  post '/signup', to: 'users#signup'
  get '/auto-login', to: 'users#auto_login'
  get '/users/:user_id/journal-entries', to: 'journal_entries#index'
  
  #journal entry routes
  post '/journal-entries', to: 'journal_entries#create'
  patch '/journal-entries/:id', to: 'journal_entries#update_user'
  get '/journal-entries', to: 'journal_entries#index'

end
