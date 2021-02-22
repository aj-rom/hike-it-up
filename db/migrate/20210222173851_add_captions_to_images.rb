class AddCaptionsToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :trail_images, :caption, :string
  end
end
