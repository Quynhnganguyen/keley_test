class CreateProduits < ActiveRecord::Migration
  def change
    create_table :produits do |t|
      t.string :description
      t.float :prix
      t.float :poids
      t.integer :tag
      t.string :image_path

      t.timestamps null: false
    end
  end
end
