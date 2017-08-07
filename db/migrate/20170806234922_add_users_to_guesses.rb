class AddUsersToGuesses < ActiveRecord::Migration[5.1]
  def change
    add_reference :guesses, :user, foreign_key: true
  end
end
