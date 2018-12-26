# serializers/post_serializer.rb
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
end

{"id": 4,
    "title": "A Blog Post By Stephen King",
    "description": "This is a blog post by Stephen King. It will probably be a movie soon.", 
    "author": {"name": "Stephen King"}
  }