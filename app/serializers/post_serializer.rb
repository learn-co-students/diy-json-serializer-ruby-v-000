class PostSerializer
  def self.serialize(post)
    # To create a valid JSON object one must first start with an open brace
    serialized_post = '{'
    #Adding the id title and description
    serialized_post += '"id": ' + post.id.to_s + ', '
    serialized_post += '"title": "' + post.title + '", '
    serialized_post += '"description": "' + post.description + '", '

    #In JSON we can also represent the author association
    serialized_post += '"author": {'
    serialized_post += '"name": "' + post.author.name + '"}'

    #To end a valid JSON object one must use a close brace
    serialized_post += '}'
  end
end
