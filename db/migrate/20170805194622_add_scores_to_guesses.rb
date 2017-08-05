class AddScoresToGuesses < ActiveRecord::Migration[5.1]
  def change
    add_column :guesses, :score, :integer
  end
end
