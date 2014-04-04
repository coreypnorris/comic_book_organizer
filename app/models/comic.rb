class Comic < ActiveRecord::Base
  validates :name, :issue, :presence => true
  has_and_belongs_to_many :artists
  has_and_belongs_to_many :writers
  has_one :cover
end
