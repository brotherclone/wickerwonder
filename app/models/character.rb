class Character < ActiveRecord::Base
  has_one :image, as: :imageable
  validates :name, presence: true
end
