class Question < ActiveRecord::Base
  has_many :conditions
  validates :name, :presence => true
end
