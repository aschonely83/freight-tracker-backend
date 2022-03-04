class Carrier < ApplicationRecord
  belongs_to :user
  has_many :pallets
end
