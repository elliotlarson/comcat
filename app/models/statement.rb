class Statement < ApplicationRecord
  validates :body, presence: true
end
