class PostSerializer
  def self.serialize(post)
    serialized_post = '{'
 
    serialized_post += '"id": ' + post.id.to_s + ', '
    serialized_post += '"title": "' + post.title + '", '
    serialized_post += '"description": "' + post.description + '", '
    serialized_post += '"author": {'
    serialized_post += '"name": "' + post.author.name + '"}'
    serialized_post += '}'
  end
end

def body
  post = Post.find(params[:id])
  render json: PostSerializer.serialize(post)
end


