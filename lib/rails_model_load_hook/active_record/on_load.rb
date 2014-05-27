require 'active_support/concern'

module RailsModelLoadHook::ActiveRecord
	module OnLoad
		extend ActiveSupport::Concern

		included do
			singleton_class.alias_method_chain :inherited, :on_load
		end

		module ClassMethods
			def inherited_with_on_load child
				inherited_without_on_load child
				ActiveSupport.run_load_hooks :model_class, child
			end
		end
	end
end
