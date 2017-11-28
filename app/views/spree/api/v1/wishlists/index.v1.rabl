object nil

node :products do
  @products.map do |product|
    {
      :id => product.id,
      :small_image => product.images&.first&.attachment&.url(:small),
      :name => product.name,
      :slug => product.slug,
      :description => product.description
    }
  end
end