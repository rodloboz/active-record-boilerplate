class Doctor < ActiveRecord::Base
  # has_one :intern
  has_many :interns
  has_many :consultations

  # has_many(:patients, {through: :consultations })
  has_many :patients, through: :consultations

  # validates({})
  validates :first_name, presence: true
  # validates :last_name, presence: true, uniqueness: true
  # There can be no repeated last_names

  # there can be no repeated first_name last_name pair
  validates :last_name, presence: true, uniqueness: { scope: :first_name}, length: { minimum: 3, maximum: 30 }
end
