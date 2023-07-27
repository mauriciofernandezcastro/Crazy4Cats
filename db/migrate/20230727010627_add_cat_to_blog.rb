class AddCatToBlog < ActiveRecord::Migration[7.0]
  def change
    add_reference :blogs, :cat, null: false, foreign_key: true
  end
end
