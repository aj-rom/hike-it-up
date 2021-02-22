class CreateReviews < ActiveRecord::Migration[4.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :trail_id
      t.string :description
      t.integer :rating
    end
  end
end
