# frozen_string_literal: true

module UsersHelper
  def check_role(role)
    case role
    when 'user'
      'Usuário normal'
    when 'moderator'
      'Moderador'
    when 'admin'
      'Administrador'
    else
      'Contate o administrador'
    end
  end
end
