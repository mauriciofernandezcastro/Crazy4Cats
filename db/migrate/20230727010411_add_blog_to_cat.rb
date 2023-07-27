class AddBlogToCat < ActiveRecord::Migration[7.0]
  def change
    add_reference :cats, :blog, null: false, foreign_key: true
  end
end
