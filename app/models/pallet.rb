class Pallet < ApplicationRecord
  belongs_to :user
  belongs_to :carrier
end
