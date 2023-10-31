# frozen_string_literal: true

class Employee < ApplicationRecord
  has_one :salary
  has_one :address
end
