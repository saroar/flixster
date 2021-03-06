Rails.application.routes.draw do
  namespace :admin do
    DashboardManifest::DASHBOARDS.each do |dashboard_resource|
      resources dashboard_resource
    end
    root controller: DashboardManifest::ROOT_DASHBOARD, action: :index
  end

  devise_for :users

  namespace :instructor do
    resources :courses, only: %i(new create show)
  end

  resources :static_pages, only: %i(index)

  root to: "static_pages#index"
end
