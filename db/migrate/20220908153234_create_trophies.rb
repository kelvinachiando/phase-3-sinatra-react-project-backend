class CreateTrophies < ActiveRecord::Migration[6.1]
  def change
    create_table :trophies do |t|
      t.string :name
      t.string :image_url
      t.integer :level_id
      t.integer :points
    end
  end
end