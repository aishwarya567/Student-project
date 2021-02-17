class Subject < ApplicationRecord
  belongs_to :semester
  validates :subject_code , format: { with: /\A[a-zA-Z0-9\s]+\z/i,
     message: ": Please enter correct subject code(can contain letters and numbers)"}
  validates :name, format: { with: /\A[a-zA-Z]+\z/,
      message: ": Enter valid subject (allow only characters)" }
end
