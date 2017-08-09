class Restaurant < ApplicationRecord
   has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true, allow_nil: false
  validates :phone_number, presence: true, allow_nil: false
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }
  validates :address, presence: true

end
