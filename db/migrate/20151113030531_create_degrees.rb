class CreateDegrees < ActiveRecord::Migration
  def change
    create_table :degrees do |t|
      t.string :degree_name
      t.string :degree_type

      t.timestamps null: false
    end
  end
end
