module RailsModelLoadHook
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
