class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path, notice: 'Success'
    else
      flash[:alert] = 'Save Error!'
    end
    
  end

  def show
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)  
      redirect_to root_path, notice: 'Success'
    else
      redirect_to edit_post_path, alert: 'Error!'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path, notice: 'Success'
  end
  
  private
    def post_params
      params.require(:post).permit(:content)
    end
  
end
