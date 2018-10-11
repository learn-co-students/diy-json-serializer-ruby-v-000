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

  def create
    @author = Author.find_or_create_by(params[:author_name])
    @post = Post.create(post_params)
    @post.author_id = @author.id
    @post.save
    redirect_to post_path(@post)
  end

  def edit
  end

  def update
    @author = Author.find_or_create_by(params[:author_name])
    @post.author_id = @author.id
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  #API endpoints

  def post_data
    post = Post.find(params[:id])
    render json: PostSerializer.serialize(post)
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:post).permit(:title, :description)
  end
end
