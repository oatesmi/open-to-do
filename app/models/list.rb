class List < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
