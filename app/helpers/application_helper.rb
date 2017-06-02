module ApplicationHelper

  def login_helper style
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

end