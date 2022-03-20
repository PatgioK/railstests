class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.integer :price
      # t.integer :peep_id
      t.belongs_to :peep, null: false, foreign_key: true

      t.timestamps
    end
  end
end
