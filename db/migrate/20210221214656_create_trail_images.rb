class CreateTrailImages < ActiveRecord::Migration[4.2]
  def change
    create_table :trail_images do |t|
      t.integer :trail_id
      t.string :url
    end
  end
end
