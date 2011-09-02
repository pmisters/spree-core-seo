ProductsController.class_eval do
  def title
    if defined?(request) and request.fullpath == "/"
      @title = Spree::Config[:homepage_title] if Spree::Config[:homepage_title].present?
    end
    if defined?(@product.title_tag)
      @title = @product.title_tag if @product.title_tag.present?
    end
  end
end
