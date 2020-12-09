class RemovePercentageFromStudents < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :percentage, :integer
  end
end
