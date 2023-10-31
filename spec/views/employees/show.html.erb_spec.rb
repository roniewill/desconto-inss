# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'employees/show', type: :view do
  before do
    assign(:employee, Employee.create!(
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
                      ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Fisrt Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Cpf/)
    expect(rendered).to match(/Phone One/)
    expect(rendered).to match(/Phone Two/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/Neighborhood/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Cep/)
  end
end
