class PostSerializer
    def self.serialize(post)

        serialized_post = '{'

        serialized_post += '"id": ' + post.id.to_s + ', '
        serialized_post += '"title": "' + post.title + '", '
        serialized_post += '"description": "' + post.description + '", '
     
        # the author association can also be represented in JSON
        serialized_post += '"author": {'
        serialized_post += '"name": "' + post.author.name + '"}'
     
        serialized_post += '}'
    end
end