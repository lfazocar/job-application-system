class CreatePositions < ActiveRecord::Migration[7.0]
  def change
    create_table :positions do |t|
      t.string :title
      t.text :info
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
