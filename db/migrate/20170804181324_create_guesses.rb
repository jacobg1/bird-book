class CreateGuesses < ActiveRecord::Migration[5.1]
  def change
    create_table :guesses do |t|
      t.string :guess_text
      t.timestamps
      t.references :post, index: true, foreign_key: true
    end
  end
end
