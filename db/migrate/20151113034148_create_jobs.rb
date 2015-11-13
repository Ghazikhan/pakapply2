class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :maximum_qualification
      t.references :advertisement, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
