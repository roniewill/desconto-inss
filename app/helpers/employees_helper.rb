# frozen_string_literal: true

module EmployeesHelper
  def brl_format(value)
    number_to_currency(value, unit: 'R$', separator: ',', delimiter: '.')
  end
end
