class AuthorsController < ApplicationController
  def index
    @author = Author.all
  end

  def show
    @author= Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.create(author_params)
    @author.save
    redirect_to author_path(@author)
  end

  def edit
  end

  def update
    @author.update(author_params)
    redirect_to author_path(@author)
  end

  # def post_data
  #   post = Post.find(params[:id])
  #   render json: PostSerializer.serialize(post)
  # end
  
private
  # # Use callbacks to share common setup or constraints between actions.
  # def set_post
  #   @post = Post.find(params[:id])
  # end

  # Never trust parameters from the scary internet, only allow the white list through.
  def author_params
    params.require(:author).permit(:name, :hometown)
  end
end