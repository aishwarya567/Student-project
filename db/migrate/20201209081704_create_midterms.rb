class CreateMidterms < ActiveRecord::Migration[6.0]
  def change
    create_table :midterms do |t|
      t.string :subjects

      t.timestamps
    end
  end
end
