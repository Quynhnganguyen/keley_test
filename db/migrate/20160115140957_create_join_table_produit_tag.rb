class CreateJoinTableProduitTag < ActiveRecord::Migration
  def change
  	create_join_table :produits, :tags do |t|
      t.index [:produit_id, :tag_id]
      t.index [:tag_id, :produit_id]
    end
    add_foreign_key :produits_tags, :produits
    add_foreign_key :produits_tags, :tags
  end
end
