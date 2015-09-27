class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    #we create an instance variable @post, then assign it an empty post returned by Post.new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]

    if @post.save

      flash[:notice] = "Post was saved."
      redirect_to @post
    else

      flash[:notice] = "There was an error saving the post. Please try again."
      render :new
    end
  end

  def edit
  end
end