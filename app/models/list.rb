class List < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :items

  validates :name, uniqueness: true
end
