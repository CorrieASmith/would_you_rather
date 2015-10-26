class ConditionChosen < ActiveRecord::Migration
  def change
    add_column :conditions, :chosen, :boolean, :default => false
  end
end
