class Semester < ApplicationRecord
	has_many :subjects
	validates :name, format: { with: /\A[a-zA-Z]+\z/,
		message: ": Enter valid sem name (allow only characters)" }
end
