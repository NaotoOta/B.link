class AddColumnToCloth < ActiveRecord::Migration
  def change
    add_column :cloths, :cloth_image, :string
  end
end
