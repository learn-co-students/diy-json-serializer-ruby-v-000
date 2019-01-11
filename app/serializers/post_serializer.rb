class PostSerializer
  def self.serializer(post)

    serialized_post = '{'

    serialized_post += '"id": ' + post.id.to_s + ', '
    serialized_post += '"title": "' + post.title.to_s + '", '
    serialized_post += '"description": "' + post.description.to_s + '", '

    serialized_post += '"author": {'
    serialized_post += '"name": "' + post.author.name + '"}'

    serialized_post += '}'
  end
end
