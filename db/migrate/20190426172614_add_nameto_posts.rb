class AddNametoPosts < ActiveRecord::Migration[5.0]
  def change
     add_column :posts, :name, :string, :default => "No Name Set"
  end
end
