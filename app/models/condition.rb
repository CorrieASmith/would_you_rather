class Condition < ActiveRecord::Base
  belongs_to :question
  validates :description, :presence => true

  scope(:not_chosen, -> do
    where({:chosen => false})
  end)

  scope(:chosen, -> do
    where({:chosen => true})
  end)
end
