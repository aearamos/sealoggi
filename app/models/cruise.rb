class Cruise < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :data
  has_many :equipments

end
