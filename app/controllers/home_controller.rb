# frozen_string_literal: true

class HomeController < ApplicationController
  include ActionView::Helpers::NumberHelper

  def index
    @salaries = Employee.group(:salary).order(salary: :asc).count(:cpf)
  end

  def show; end

  def report
    salaries = Employee.group(:salary).count
    data_chart = add_format(salaries)
    render json: data_chart.chart_json
  end

  private

  def add_format(salaries)
    salaries.transform_keys { |key| salary_brl_format(key) }
  end

  def salary_brl_format(salary)
    number_to_currency(salary, unit: 'R$', separator: ',', delimiter: '.')
  end
end
