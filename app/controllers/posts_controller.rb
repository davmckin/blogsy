class PostsController < ApplicationController

  def show
    @posts = Post.all
    render json: @posts
  end

  def show_id
    @posts = Post.find_by(id: params[:id])
    render json: @posts
  end

  def show_comments
    @posts = Post.find_by(id: params[:comments])
    render json: @posts
  end

  def destroy
    @posts = Post.find_by(id: params[:id])
    @posts.destroy
  end

end
