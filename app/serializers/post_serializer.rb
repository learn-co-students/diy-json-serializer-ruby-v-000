class PostSerializer
    def self.serialize(post)
        sp = serialized_post = ""
        sp = open_curly
            sp += to_json('id', post.id) + comma
            sp += to_json('title', post.title) + comma
            sp += to_json('description', post.description) + comma 
            sp += to_json('author', nil) + open_curly
                sp += to_json('name', post.author.name)
            sp += close_curly
        sp += close_curly
    end

    private

    def self.to_json(key, value = nil)
        result = quote_wrap(key) + colon

        if value
            value = (String == value.class) ? 
            quote_wrap(value) : value.to_s

            result += value
        end

        result
    end

    def self.close_curly
        '}'
    end

    def self.colon
        ': '
    end

    def self.comma
        ', '
    end

    def self.open_curly
        '{'
    end

    def self.quote_wrap(value)
        '"' + value + '"'
    end
end