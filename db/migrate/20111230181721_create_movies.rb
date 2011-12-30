class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :gender
      t.integer :duration

      t.timestamps
    end
  end
end
