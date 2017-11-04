Rails.application.routes.draw do

  scope module: 'api' do
    namespace :v1 do
      resources :patients
      resources :sensors
      resources :measures, except: [:update]
    end
  end

  resources :patients
  resources :sensors
  resources :measures

  root "patients#index"
end
