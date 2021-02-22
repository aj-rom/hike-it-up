class CreateTrails < ActiveRecord::Migration[4.2]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :hours
    end
  end
end
