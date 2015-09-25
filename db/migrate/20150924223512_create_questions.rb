class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :text
      t.boolean :reallife

      t.timestamps null: false
    end
  end
end
