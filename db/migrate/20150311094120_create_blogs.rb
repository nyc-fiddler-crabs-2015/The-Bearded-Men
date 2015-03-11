class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.references :user, null: false

      t.timestamps
    end
  end
end

