class Character < ActiveRecord::Base
  has_one :img, :as => :imageable
  #Todo put dependent destory once imageable is in factory
  validates :name, presence: true
end
