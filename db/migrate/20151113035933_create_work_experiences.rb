class CreateWorkExperiences < ActiveRecord::Migration
  def change
    create_table :work_experiences do |t|
      t.string :work_type
      t.date :start_date
      t.date :end_date
      t.references :user, index: true, foreign_key: true
      t.references :field, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
