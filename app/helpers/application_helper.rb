module ApplicationHelper

  def login_helper style = ''
    if current_user.is_a?(GuestUser)
      (link_to "Registrarse", new_user_registration_path, class: style) + 
      " ".html_safe +
      (link_to "Iniciar sesión", new_user_session_path, class: style)
    else 
      link_to "Cerrar sesión", destroy_user_session_path, method: :delete, class: style
    end 
  end

  def source_helper(layout_name)
       if session[:source]
        greeting = "Gracias por visitarme desde #{session[:source]} and you are on the #{layout_name} layout"
        content_tag(:p, greeting, class: "source-greeting")
     end
  end

  def copyrigth_generator
     JcctekViewTool::Renderer.copyright 'Jose Carlos Calzada - jcctek.com - ', "All rights reserved"   
  end

  def nav_items
    [
      {
        url: root_path,
        title: 'Inicio'
      },
      {
        url: about_path,
        title: 'Sobre Mi'
      },
      {
        url: contact_path,
        title: 'Contacto'
      },
      {
        url: blogs_path,
        title: 'Blog'
      },
      {
        url: portfolios_path,
        title: 'Portfolio'
      }
    ]
  end

  def nav_helper style, tag_type
    nav_links = ""
    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end


    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end

# distance_of_time_in_words in spanish
  def distance_of_time_in_words(from_time, to_time = 0, include_seconds = false)
     from_time = from_time.to_time if from_time.respond_to?(:to_time)
     to_time = to_time.to_time if to_time.respond_to?(:to_time)
     distance_in_minutes = (((to_time - from_time).abs)/60).round
     distance_in_seconds = ((to_time - from_time).abs).round

     case distance_in_minutes
       when 0..1
         return (distance_in_minutes == 0) ? 'menos de un minuto' : '1 minuto' unless include_seconds
         case distance_in_seconds
           when 0..4   then 'menos de 5 segundos'
           when 5..9   then 'menos de 10 segundos'
           when 10..19 then 'menos de 20 segundos'
           when 20..59 then 'menos de un minuto'
         else             '1 minuto'
         end

        when 2..44           then "#{distance_in_minutes} minutos"
        when 45..89          then 'aproximadamente 1 hora'
        when 90..1439        then "aproximadamente #{(distance_in_minutes.to_f / 60.0).round} horas"
        when 1440..2879      then '1 dia'
        when 2880..43199     then "#{(distance_in_minutes / 1440).round} dias"
        when 43200..86399    then 'aproximadamente 1 mes'
        when 86400..525959   then "#{(distance_in_minutes / 43200).round} meses"
        when 525960..1051919 then 'aproximadamente 1 año'
     else                      "mas de #{(distance_in_minutes / 525960).round} años"

   end
end

end

