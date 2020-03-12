Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/aws', to: 'amazon_wrappers#client'
  get '/google', to: 'google_drive_wrappers#client'

  get '/journal-entry', to: 'journal_entries#content', as: "journal"
  post '/journal-entries', to: 'journal_entries#create'
  get '/journal/:id', to: 'journal_entries#show', as: "journal_entry"
  
end
