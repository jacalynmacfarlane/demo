class CreatePatientSearches < ActiveRecord::Migration
  def change
    create_table :patient_searches do |t|
      t.string :first_initial
      t.string :last_initial
      t.string :created_at
      t.integer :drc_id

      t.timestamps
    end
  end
end
