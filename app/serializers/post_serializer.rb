class PostSerializer
  def self.serialize(post)
    #start with open brace to create valid JSON object
    serialized_post = '{'
    serialized_post += '"id": ' + post.id.to_s + ', '
    serialized_post += '"title": "' + post.title + '", '
    serialized_post += '"description": "' + post.description + '", '

    #author association can be represented in JSON

    serialized_post += '"author": {'
    serialized_post += '"name": "' + post.author.name + '"}'

    #end with close brace

    serialized_post += '}'
  end

end
