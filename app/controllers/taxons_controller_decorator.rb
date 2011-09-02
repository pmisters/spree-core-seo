TaxonsController.class_eval do
  def title
    if defined?(@taxon.title_tag)
      @title = @taxon.title_tag if @taxon.title_tag.present?
    end
  end
end
