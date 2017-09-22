class Project < ApplicationRecord
  belongs_to :user
  has_many :cruises
  has_many :equipments
  has_many :data
end
