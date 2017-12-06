#Serialize a POST Object

class PostSerializer
	
	def self.serialize(post)

		#start with the open brace to create a valid JSON Object
		serialized_post = "{"

		serialized_post += '"id": ' + post.id.to_s + ', '
		serialized_post += '"title": "' + post.title + '", '
		serialized_post += '"description": "' + post.description + '", '

		#the author association can also be respresented in JSON
		serialized_post += '"author": {'
		serialized_post += '"name": "' + post.author.name + '"}'

		#end with closed brace
		serialized_post += '}'
	end

end