class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :country
      t.string :state
      t.string :city
      t.string :place_photo_url
    end
  end
end
