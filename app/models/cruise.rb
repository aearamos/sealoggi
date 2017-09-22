class Cruise < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :data
  has_many :equipments
  validates :ship, presence: :true
  validates :project, presence: :true
  validates :responsible, presence: :true
  validates :field, presence: :true
end


