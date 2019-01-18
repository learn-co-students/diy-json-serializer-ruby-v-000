class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      # t.name :string
      t.timestamps null: false
    end
  end
end
