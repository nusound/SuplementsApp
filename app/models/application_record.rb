class ApplicationRecord < ActiveRecord::Base
  belongs_to :users
  self.abstract_class = true
end
