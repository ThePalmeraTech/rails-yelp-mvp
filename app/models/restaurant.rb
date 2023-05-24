class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :phone_number, :category, presence: true
  validates :name, :address, :category, presence: { allow_blank: false }
  validates :category, presence: true , inclusion: { in: %w(italian chinese mexican japanese french belgian), category: "%{neptunian} is not a valid category" }
  
end
