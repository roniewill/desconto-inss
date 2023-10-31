# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'when register new user' do
    let(:user) { described_class.create(email: 'test@example.com', password: 'password123', password_confirmation: 'password123') }
    let(:_user) { described_class.create(email: 'test2@example.com', password: 'password123', password_confirmation: 'passw0rd123') }

    it 'user is valid' do
      expect(user).to be_valid
    end

    it 'something is wrong' do
      expect(_user).not_to be_valid
    end
  end
end
