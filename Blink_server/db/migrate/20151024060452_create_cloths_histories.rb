class CreateClothsHistories < ActiveRecord::Migration
  def change
    create_table :cloths_histories do |t|
      t.references :cloth, index: true, foreign_key: true
      t.references :history, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
