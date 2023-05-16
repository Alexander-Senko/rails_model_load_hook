require 'rails_model_load_hook/active_record/on_load'

ActiveSupport.on_load :active_record do
  prepend RailsModelLoadHook::ActiveRecord::OnLoad
end
