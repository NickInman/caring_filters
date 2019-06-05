class CreateFilters < ActiveRecord::Migration[5.2]
  def change
    create_table :filters do |t|
      t.integer :zip
      t.integer :reviews
      t.integer :rating
      t.integer :cost
      t.boolean :enhanced
      t.boolean :carehome
    end
  end
end
