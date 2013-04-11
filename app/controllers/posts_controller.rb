class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    @post.poster = current_user.email 
    if @post.save
      redirect_to posts_path, :notice => "Post successful!" 
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
    if current_user.admin == '0' && current_user.email != @post.poster
      redirect_to posts_path, :notice => "You may only edit your own posts."
    end
  end

  def update
    @post = Post.find(params[:id])
    @post.editor = current_user.email
    if @post.update_attributes(params[:post])
      redirect_to posts_path, :notice => "The post has been updated."
    else
       render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if current_user.admin == "1" || current_user.email == @post.poster
      @post.destroy
      redirect_to posts_path, :notice => "The post has been deleted."
    else
      redirect_to posts_path, :notice => "You do not have permission to delete that post."
    end
  end

end
