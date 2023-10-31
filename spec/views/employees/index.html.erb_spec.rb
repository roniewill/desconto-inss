# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'employees/index', type: :view do
  before do
    assign(:employees, [
             Employee.create!(
               fisrt_name: 'Fisrt Name',
               last_name: 'Last Name',
               cpf: 'Cpf',
               phone_one: 'Phone One',
               phone_two: 'Phone Two',
               salary: '9.99',
               inss: '9.99',
               street: 'Street',
               number: 'Number',
               neighborhood: 'Neighborhood',
               city: 'City',
               state: 'State',
               cep: 'Cep'
             ),
             Employee.create!(
               fisrt_name: 'Fisrt Name',
               last_name: 'Last Name',
               cpf: 'Cpf',
               phone_one: 'Phone One',
               phone_two: 'Phone Two',
               salary: '9.99',
               inss: '9.99',
               street: 'Street',
               number: 'Number',
               neighborhood: 'Neighborhood',
               city: 'City',
               state: 'State',
               cep: 'Cep'
             )
           ])
  end

  it 'renders a list of employees' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Fisrt Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Last Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Cpf'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Phone One'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Phone Two'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('9.99'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('9.99'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Street'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Number'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Neighborhood'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('City'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('State'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Cep'.to_s), count: 2
  end
end
