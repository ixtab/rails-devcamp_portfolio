module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new( name: "Visitante Irreconocible",
                    first_name: "Visitante",
                    last_name: "Irreconocible",
                    email: "commander@nightwatch.org"
                    )
  end

end
