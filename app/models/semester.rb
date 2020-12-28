class Semester < ApplicationRecord
  belongs_to :student
  has_many :subjects

end
