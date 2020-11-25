class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.integer :percentage


      t.timestamps
    end
  end
  def change1
    remove_column :students, :stu_id
  end
end
