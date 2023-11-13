# frozen_string_literal: true

require 'rails_helper'

RSpec.describe EmployeesController do
  let(:user) { create(:user) }
  let(:employee) { build(:employee) }

  let(:valid_params) do
    {
      first_name: employee.first_name,
      last_name: employee.last_name,
      cpf: employee.cpf,
      birth_date: employee.birth_date,
      phone_number_one: employee.phone_number_one,
      phone_number_two: employee.phone_number_two,
      salary: employee.salary,
      inss: employee.inss,
      street: employee.street,
      number: employee.number,
      neighborhood: employee.neighborhood,
      city: employee.city,
      state: employee.state,
      cep: employee.cep
    }
  end

  let(:invalid_params) do
    {
      first_name: nil,
      last_name: employee.last_name,
      cpf: nil,
      birth_date: employee.birth_date,
      phone_number_one: nil,
      phone_number_two: employee.phone_number_two,
      salary: employee.salary,
      inss: employee.inss,
      street: employee.street,
      number: employee.number,
      neighborhood: employee.neighborhood,
      city: employee.city,
      state: employee.state,
      cep: employee.cep
    }
  end

  before do
    sign_in(user)
  end

  describe 'GET index' do
    before do
      get :index
    end

    it 'when render template' do
      expect(response).to render_template('index')
    end

    it 'when returns ok status' do
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET new' do
    before { get :new }

    it 'assigns object' do
      expect(assigns(:employee)).to be_a_new(Employee)
    end

    it 'render new template' do
      expect(response).to render_template('employees/new')
    end

    it 'returns status 200' do
      expect(response.status).to eq(200)
    end
  end

  describe 'POST create' do
    let(:params) { attributes_for(:employee) }

    it 'creates a new Employee' do
      expect { post :create, params: { employee: params } }.to change(Employee, :count).by(1)
    end

    it 'redirects to employees_path', aggregate_failures: true do
      post :create, params: { employee: params }

      expect(response.status).to eq(302)
      expect(response).to redirect_to(Employee.last)
    end

    context 'with invalid parameters' do
      it 'does not create a new Employee' do
        expect do
          post :create, params: { employee: invalid_params }
        end.to change(Employee, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post :create, params: { employee: invalid_params }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PATCH update' do
    context 'with valid params' do
      let(:params) { attributes_for(:employee) }

      it 'redirects to show employee', aggregate_failures: true do
        employee1 = Employee.create! valid_params

        patch :update, params: { employee: { cpf: Faker::IDNumber.brazilian_citizen_number }, id: employee1.id }
        employee1.reload
        expect(response.status).to eq(302)
        expect(response).to redirect_to(Employee.last)
      end
    end

    context 'with invalid parameters' do
      let(:employee2) { create(:employee) }

      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        patch :update, params: { employee: { cpf: nil }, id: employee2.id }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested employee' do
      employee = Employee.create! valid_params
      expect do
        delete :destroy, params: { id: employee.id }
      end.to change(Employee, :count).by(-1)
    end

    it 'redirects to the employees list' do
      employee = Employee.create! valid_params
      delete :destroy, params: { id: employee.id }
      expect(response).to redirect_to(employees_path)
    end
  end
end
