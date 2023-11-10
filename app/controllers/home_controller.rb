# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @salaries = Employee.group(:salary).count(:cpf)
  end

  def show; end

  def report
    render json: Employee.group(:salary).count.chart_json
  end
end
