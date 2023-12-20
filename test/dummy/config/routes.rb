Rails.application.routes.draw do
  mount RailsModelLoadHook::Engine => "/rails_model_load_hook"
end
