class CreateReserves < ActiveRecord::Migration
  def change
    create_table :reserves do |t|
      t.references :movie
      t.references :client
      t.string :obs

      t.timestamps
    end
  end
end
