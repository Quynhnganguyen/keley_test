class AddIndexImageToProduit < ActiveRecord::Migration
  def change
  	add_reference :images, :produit, index: true
  	remove_column :produits, :image_path, :string
  end
end
