class Subject < ApplicationRecord
  has_many :results
  belongs_to :semester
end
