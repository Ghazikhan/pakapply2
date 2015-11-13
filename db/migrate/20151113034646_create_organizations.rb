class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :organization_name
      t.references :job, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
