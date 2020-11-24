class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.integer :stu_id
      t.string :name
      t.integer :age
      t.string :address

      t.timestamps
    end
  end
end
