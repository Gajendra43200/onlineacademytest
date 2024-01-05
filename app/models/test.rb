  class Test < ApplicationRecord
    belongs_to :completed_subject
    has_and_belongs_to_many :questions
    validates :correct_percentage, presence: true
  end
