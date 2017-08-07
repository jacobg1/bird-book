class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.references :post, index: true, foreign_key: true, null: false
      t.references :category, index: true, foreign_key: true, null: false
    end
  end
end
