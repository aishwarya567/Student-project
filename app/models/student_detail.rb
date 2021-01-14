class StudentDetail < ApplicationRecord
	has_many :results
	validates :usn, presence: true
	before_create do
    self.usn = usn.upcase
    self.name = name.titleize
    self.gender = gender.downcase
  end
end
