module PostsHelper
  def submit_btn_text
    @post.id ? "Update Post" : "Submit Post"
  end
end
