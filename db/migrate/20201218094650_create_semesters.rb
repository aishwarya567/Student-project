class CreateSemesters < ActiveRecord::Migration[6.0]
  def change
    create_table :semesters do |t|
      t.string :sem_name
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
