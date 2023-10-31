# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'employees/new', type: :view do
  before do
    assign(:employee, Employee.new(
                        fisrt_name: 'MyString',
                        last_name: 'MyString',
                        cpf: 'MyString',
                        phone_one: 'MyString',
                        phone_two: 'MyString',
                        salary: '9.99',
                        inss: '9.99',
                        street: 'MyString',
                        number: 'MyString',
                        neighborhood: 'MyString',
                        city: 'MyString',
                        state: 'MyString',
                        cep: 'MyString'
                      ))
  end

  it 'renders new employee form' do
    render

    assert_select 'form[action=?][method=?]', employees_path, 'post' do
      assert_select 'input[name=?]', 'employee[fisrt_name]'

      assert_select 'input[name=?]', 'employee[last_name]'

      assert_select 'input[name=?]', 'employee[cpf]'

      assert_select 'input[name=?]', 'employee[phone_one]'

      assert_select 'input[name=?]', 'employee[phone_two]'

      assert_select 'input[name=?]', 'employee[salary]'

      assert_select 'input[name=?]', 'employee[inss]'

      assert_select 'input[name=?]', 'employee[street]'

      assert_select 'input[name=?]', 'employee[number]'

      assert_select 'input[name=?]', 'employee[neighborhood]'

      assert_select 'input[name=?]', 'employee[city]'

      assert_select 'input[name=?]', 'employee[state]'

      assert_select 'input[name=?]', 'employee[cep]'
    end
  end
end
