class CreateRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rates do |t|
      t.references :origin, foreign_key: true
      t.references :destination, foreign_key: true
      t.references :carrier, foreign_key: true
      t.references :shipment_type, foreign_key: true
      t.decimal :cost
      t.references :unit_of_measure, foreign_key: true

      t.timestamps
    end
  end
end
