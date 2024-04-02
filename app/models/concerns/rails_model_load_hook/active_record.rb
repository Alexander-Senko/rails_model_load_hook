module RailsModelLoadHook
	concern :ActiveRecord do
		class_methods do
			private

			def load_schema!(...)
				super

				(@model_loading ||= Mutex.new).try_lock or return # prevent double execution

				ActiveSupport.run_load_hooks :model_class, self
			end
		end
	end
end
