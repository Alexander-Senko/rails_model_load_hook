ActiveSupport.on_load :active_record do
	prepend RailsModelLoadHook::ActiveRecord
end
