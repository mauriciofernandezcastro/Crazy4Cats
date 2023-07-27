class AddCrazyToBlog < ActiveRecord::Migration[7.0]
  def change
    add_reference :blogs, :crazy, null: false, foreign_key: true
  end
end
