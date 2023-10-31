# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'when register new user' do
    it 'when user is valid' do
      user = build(:user)
      expect(user).to be_valid
    end

    it 'when user does not have a email' do
      user = build(:user, email: nil)
      expect(user).not_to be_valid
    end

    it 'when password confirmation is wrong' do
      user = build(:user, password_confirmation: 'passw0rd123')
      expect(user).not_to be_valid
    end
  end
end
