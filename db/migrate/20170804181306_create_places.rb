class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :country
      t.string :state
      t.string :city
    end
  end
end
