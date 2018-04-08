class PostSerializer

  def self.serialize(post)
    serialize_post = '{'

    serialize_post += '"id":' + post.id.to_s + ', '
    serialize_post += '"title": "' + post.title + '",'
    serialize_post += '"description": "' + post.description + '",'

    serialize_post += '"author": {'
    serialize_post += '"name": "' + post.author.name + '"}'

    serialize_post += '}'
  end

end
