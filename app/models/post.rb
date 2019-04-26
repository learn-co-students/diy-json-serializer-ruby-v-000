# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  author_id   :integer
#

class Post < ActiveRecord::Base
  belongs_to :author
   
  def self.create(params)
    new_post = Post.new(params)
    unless params[:name].nil?
       new_post.author = Author.create!(name: params[:name]) 
    else 
       new_post.author = Author.create!(name: "Author Not Set")
    end
    new_post.save!
    new_post 
  end 
end
