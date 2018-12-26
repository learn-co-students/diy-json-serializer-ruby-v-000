class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def create
    @author = Author.new(author_params)
    @author.save
    redirect_to author_path(@author)
  end

  def show
    @author = Author.find_by(params[:id])
  end

  private
    def author_params
      params.require(:author).permit(:name, :hometown)
    end
  end
