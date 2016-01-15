class AddNomToProduit < ActiveRecord::Migration
  def change
  	add_column :produits, :nom, :string
  end
end
