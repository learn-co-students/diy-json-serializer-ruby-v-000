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
    if name
      self.author_id = Author.find_or_create_by(name: name).id
    else
      self.author_id = Author.find_or_create_by(name: "Daniel").id
    end

  end

end
