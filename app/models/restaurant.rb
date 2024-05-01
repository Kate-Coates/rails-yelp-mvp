class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = %w[chinese italian japanese french belgian].freeze

  validates :address, :name, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
