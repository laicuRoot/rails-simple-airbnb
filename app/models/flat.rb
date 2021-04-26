class Flat < ApplicationRecord
  NUMBER_OF_GUEST = [1, 2, 3]
  validates :name, :address, :description, presence: true
  validates :number_of_guest, inclusion: { in: NUMBER_OF_GUEST }
end
