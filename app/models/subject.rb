class Subject < ApplicationRecord
   has_many :questions
   has_many :completed_subjects
end   
