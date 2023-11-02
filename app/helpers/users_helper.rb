# frozen_string_literal: true

module UsersHelper
  def check_role(admin)
    case admin
    when false
      'Usuário normal'
    when true
      'Administrador'
    else
      'Contate o suporte'
    end
  end
end
