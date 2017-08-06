class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :photo_url
      t.timestamps
      t.references :place, index: true, foreign_key: true
    end
  end
end
