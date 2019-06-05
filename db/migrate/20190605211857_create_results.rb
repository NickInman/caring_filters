class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.integer :resultId
      t.string :name, default: "NA"
      t.string :address, default: "NA"
      t.integer :postalCode, default: 00000
      t.boolean :enhanced, default: false
      t.boolean :careHome, default: false
      t.string :description, default: "NA"
      t.integer :averageCost, default: 0
      t.integer :averageRating, default: 0
      t.integer :foodRating, default: 0
      t.integer :reviews, default: 0
      t.string :url, default: "NA"
      t.string :websiteUrl, default: "NA"
      t.integer :phone, default: 000-000-0000

    end
  end
end
