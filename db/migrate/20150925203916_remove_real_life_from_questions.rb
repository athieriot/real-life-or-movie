class RemoveRealLifeFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :reallife, :boolean
  end
end
