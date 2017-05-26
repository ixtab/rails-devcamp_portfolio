module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Mi aplicación web en RoR | Devcamp Portfolio"   
    @seo_keywords = "Jose Carlos Calzada Portfolio Ruby on Rails ejercicio" 
  end

end