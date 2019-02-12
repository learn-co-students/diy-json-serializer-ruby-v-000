class PostSerializer
  def self.serialize(post)
    #create a valid JSON object
    serialized_post = '{'
      serialized_post += '"id": ' + post.id.to_s + ', '
      serialized_post += '"title": "' + post.title + '", '
      serialized_post += '"description": "' + post.description + '", '
      # also replace author association in JSON
      serialized_post += '"author": {'
        serialized_post += '"name": "' + post.author.name + '"}'
    # end serialized object
    serialized_post += '}'
  end
end
