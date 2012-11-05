class CreateTennis < ActiveRecord::Migration
  def change
    create_table :tennis do |t|
      t.string :jugador1
      t.string :jugador2
      t.integer :p1
      t.integer :p2
      t.string :ganador

      t.timestamps
    end
  end
end
