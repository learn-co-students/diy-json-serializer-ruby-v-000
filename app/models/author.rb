class Author < ActiveRecord::Base
  has_many :posts
  
  def self.find_or_create_by_name(name)
    if author = Author.find_by(name: name)
      author
    else
      author = Author.create(name: name)
      author
    end
  end
end
