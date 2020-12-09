class AddGenderToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :gender, :string
  end
end
