class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :age
      t.string :race
      t.integer :hp
      t.integer :physical_attack
      t.integer :physical_defense
      t.integer :physical_critical_chance
      t.integer :evasion
      t.integer :accuracy
      t.integer :hp_recovery
      t.integer :chance_block_shield
      t.float :cash

      t.timestamps
    end
  end
end
