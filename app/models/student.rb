class Student < ApplicationRecord
  has_many :completed_subjects
  has_many :tests, through: :completed_subjects
end
