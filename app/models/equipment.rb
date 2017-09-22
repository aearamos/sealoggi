class Equipment < ApplicationRecord
  belongs_to :cruise
  validates :name, presence: :true
  validates :type, presence: :true
  validates :company, presence: :true
end




