class PostSerializer
  def self.serialize(post)

    #Open brace starts any valid JSON object
    serialized_post += '{'
    serialized_post += '"id": ' + post.id.to_s + ', '
    serialized_post += '"title": "' + post.title + '", '
    serialized_post += '"description": "' + post.description + '", '

    #The author of the post
    serialized_post += '"author": {'
    serialized_post += '"name": "' + post.author.name + '"}'

    serialized_post += '}'
  end
end
