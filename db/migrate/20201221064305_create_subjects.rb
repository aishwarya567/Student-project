class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :sub_1
      t.integer :marks_1
      t.string :sub_2
      t.integer :marks_2
      t.string :sub_3
      t.integer :marks_3
      t.string :sub_4
      t.integer :marks_4
      t.string :sub_5
      t.integer :marks_5
      t.references :student, null: false, foreign_key: true
      t.references :semester, null: false, foreign_key: true

      t.timestamps
    end
  end
end
