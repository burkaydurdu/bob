class CreateCoffees < ActiveRecord::Migration[5.2]
  def change
    create_table :coffees, id: :uuid  do |t|
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end
