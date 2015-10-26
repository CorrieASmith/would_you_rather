class Condition < ActiveRecord::Base
  belongs_to :question

  validates :description, :presence => true
end
