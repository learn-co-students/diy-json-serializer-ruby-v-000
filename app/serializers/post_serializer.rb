class PostSerializer

  def self.serialize(post)
    # start with the open brace to create a valid JSON object
    serialized_post = '{'
    serialized_post += '"id": ' + post.id.to_s + ', '
    serialized_post += '"title": "' + post.title + '", '
    serialized_post += '"description": "' + post.description + '", '

    # the author association can also be represented in JSON
    serialized_post += '"author": {'
    serialized_post += '"name": "' + post.author.name + '"}'

    # and end with the close brace
    serialized_post += '}'
  end

  #Equals:
#{
#   "id": 1,
#   "title": "This is a blog post",
#   "description": "Lorem ipsum sit amet dolor...",
#   "author": {
#     "id":2,
#     "name": "Stephen King",
#   }
# }
end
