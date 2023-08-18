class CreateApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :applications do |t|
      t.references :user, null: false, foreign_key: true
      t.references :position, null: false, foreign_key: true
      t.boolean :new, default: true

      t.timestamps
    end
  end
end
