class Material < ActiveRecord::Base
  has_many :downloads, dependent: :destroy
end
