class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.column :description, :string
      t.column :question_id, :integer

      t.timestamps
    end
  end
end
