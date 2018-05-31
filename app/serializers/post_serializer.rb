class PostSerializer
  def self.serialize(post)
    serialized = '{'
    serialized += '"id": ' + post.id.to_s + ', '
    serialized += '"title": "' + post.title + '", '
    serialized += '"description": "' + post.description + '", '
    serialized += '"author": {'
    serialized += '"name": "' + post.author.name + '"}'
    serialized += '}'
  end
end
