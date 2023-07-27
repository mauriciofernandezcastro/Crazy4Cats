class CreateCats < ActiveRecord::Migration[7.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.text :adventure

      t.timestamps
    end
  end
end
