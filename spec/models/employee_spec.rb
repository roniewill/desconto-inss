# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Employee, type: :model do
  context 'when register new employee' do
    it 'when employee is valid' do
      employee = build(:employee)
      expect(employee).to be_valid
    end

    it 'when employee does not have a cpf' do
      employee = build(:employee, cpf: nil)
      expect(employee).not_to be_valid
    end

    it 'when does not have a phone number one' do
      employee = build(:employee, phone_number_one: nil)
      expect(employee).not_to be_valid
    end
  end
end
