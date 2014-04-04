class Comic < ActiveRecord::Base
  validates :name, :issue, :presence => true
end
