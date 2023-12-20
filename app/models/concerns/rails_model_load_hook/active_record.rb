module RailsModelLoadHook
	concern :ActiveRecord do
		class_methods do
			private

			def load_schema!(...)
				super

				ActiveSupport.run_load_hooks :model_class, self
			end
		end
	end
end
