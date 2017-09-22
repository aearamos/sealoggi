class Project < ApplicationRecord
  belongs_to :user
  has_many :cruises
  has_many :equipments
  has_many :data
  validates :description, presence: :true
  validates :name, presence: :true
  validates :responsible, presence: :true
end





