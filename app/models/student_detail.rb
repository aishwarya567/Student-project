class StudentDetail < ApplicationRecord
  has_many :results
  validates :name, format: { with: /\A[a-zA-Z]+\z/,
    message: ": Enter valid name (allow only characters)" }
  validates :usn, numericality: { only_integer: true, message: ": Invalid USN" }
  validates :address, format: { with: /\A[a-zA-Z]+\z/,
    message: ": Enter correct address (allow only characters)" }
	
	before_create do
    self.usn = usn.upcase
    self.name = name.titleize
    self.gender = gender.downcase
  end
end
