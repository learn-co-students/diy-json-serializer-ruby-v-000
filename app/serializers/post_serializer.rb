class PostSerializer
  def self.serialize(post) # class method accepts post instance as argument
    # serialize the post instance, i.e., turn it into a JSON string
    # (a plain text string of the JSON object representing the post instance)
    # start with the open brace to create a valid JSON object
    serialized_post = '{'

    serialized_post += '"id": ' + post.id.to_s + ', '
    serialized_post += '"title": "' + post.title + '", '
    serialized_post += '"description": "' + post.description + '", '
    # a post belongs to an author
    # the author association can also be represented in JSON
    serialized_post += '"author": {'
    serialized_post += '"name": "' + post.author.name + '"}'

    # and end with the close brace
    serialized_post += '}'
  end
end
