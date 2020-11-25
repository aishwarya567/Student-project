class AddColumnPercentageToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :percentage, :integer
  end
end
