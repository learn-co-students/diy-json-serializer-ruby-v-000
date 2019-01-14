class AddNameToPosts < ActiveRecord::Migration
  def 
    add_column :posts, :name, :string
  end
end
