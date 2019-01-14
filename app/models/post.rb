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

  def name=(name)
    author = Author.find_or_create_by(name: name)
    self.author = author
  end

  def name
    self.author.name unless self.author.nil?
  end
end
