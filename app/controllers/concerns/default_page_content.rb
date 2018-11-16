module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "DevcampPortfolio | Iain A Maxwell"
    @seo_keywords = "Iain Maxwell portfolio rails"
  end
end
