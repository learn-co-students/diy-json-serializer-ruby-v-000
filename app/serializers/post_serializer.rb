class PostSerializer

  def self.serialize(post)
    serialised_post = '{'
#post
    serialised_post += '"id": ' + post.id.to_s + ', '
    serialised_post += '"title": "' + post.title + '", '
    serialised_post += '"description": "' + post.description + '", '
#author
    serialised_post += '"author": {'
    serialised_post += '"name": "' + post.author.name + '"}'

    serialised_post += '}'
  end

end
