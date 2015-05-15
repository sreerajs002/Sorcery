class CreateControllers < ActiveRecord::Migration
  def change
    create_table :controllers do |t|
      t.string :items
      t.string :name
      t.string :quantity

      t.timestamps null: false
    end
  end
end
