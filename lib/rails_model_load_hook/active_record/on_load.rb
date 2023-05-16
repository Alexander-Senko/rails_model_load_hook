require 'active_support/concern'

module RailsModelLoadHook::ActiveRecord
	module OnLoad
		extend ActiveSupport::Concern

		module ClassMethods
			private

			def inherited child
				super

				ActiveSupport.run_load_hooks :model_class, child
			end
		end
	end
end
