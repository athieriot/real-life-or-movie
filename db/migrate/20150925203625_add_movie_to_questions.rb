class AddMovieToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :movie, :string
  end
end
