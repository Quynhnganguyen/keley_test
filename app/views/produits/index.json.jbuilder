json.array!(@produits) do |produit|
  json.extract! produit, :id, :description, :prix, :poids, :tag, :image_path
  json.url produit_url(produit, format: :json)
end
