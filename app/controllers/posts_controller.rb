class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def post_data
    post = Post.find(params[:id])
    render json: PostSerializer.serialize(post)
  end

  def create
    @author = Author.find_or_create_by(name: post_params[:author])
    @post = Post.create(title: post_params[:title], description: post_params[:description], author: @author)
    @author.save
    @post.save
    redirect_to post_path(@post)
  end

  def edit
  end

  def update
    @author = Author.find_or_create_by(name: post_params[:author])
    @author.save
    @post.update(title: post_params[:title], description: post_params[:description], author: @author)
    redirect_to post_path(@post)
  end

  #def post_data
   # post = Post.find(params[:id])
    #render plain: post.description
  #end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:post).permit(:title, :description, :author)
  end
end
