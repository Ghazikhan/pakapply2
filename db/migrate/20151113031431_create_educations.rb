class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :division_grade
      t.integer :obtaiend_marks
      t.date :years
      t.references :user, index: true, foreign_key: true
      t.references :institute, index: true, foreign_key: true
      t.references :degree, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
