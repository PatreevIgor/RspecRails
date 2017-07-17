class AddDefaultValueToCashType < ActiveRecord::Migration[5.1]
  def change
		change_table :characters do |t|
		  t.change :cash, :float, :default => 0
		end
  end
end
