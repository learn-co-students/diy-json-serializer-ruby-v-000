class PostSerializer
  def self.serialize(post)
 
    # start with the open brace to create a valid JSON object
    serialized_post = '{'

    # add Post.count, to manage 'next' feature, in show page
    
    serialized_post += '"id": ' + post.id.to_s + ', '
    serialized_post += '"title": "' + post.title + '", '
    serialized_post += '"description": "' + post.description + '", '
    serialized_post += '"postsCount": "' + "#{Post.all.count}" + '", '
 
    # the author association can also be represented in JSON
    serialized_post += '"author": {'
    serialized_post += '"name": "' + post.author.name + '"} '
 
    # and end with the close brace
    serialized_post += '}'
  end
end