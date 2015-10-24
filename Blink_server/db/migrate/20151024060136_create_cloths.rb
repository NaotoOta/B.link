class CreateCloths < ActiveRecord::Migration
  def change
    create_table :cloths do |t|
      t.string :name
      t.string :beacon_identification_key
      t.references :user, index: true, foreign_key: true
      t.string :url

      t.timestamps null: false
    end
  end
end
