class CompletedSubject < ApplicationRecord
  belongs_to :student
  belongs_to :subject
  has_many :tests
end
