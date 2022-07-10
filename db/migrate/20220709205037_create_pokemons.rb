class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :identifier
      t.integer :height
      t.integer :weight
      t.integer :base_experience
      t.integer :order
      t.boolean :is_default
      t.timestamps null: false
    end
  end
end
