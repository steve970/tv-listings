class CreateShowListings < ActiveRecord::Migration
  def change
    create_table :show_listings do |t|
      t.integer :show_id
      t.integer :channel_id
      t.string :date

      t.timestamps null: false
    end
  end
end
