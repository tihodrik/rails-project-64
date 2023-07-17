# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params.merge(creator: current_user.email))
    if @post.save
      flash[:success] = 'New post was successfully created'
      redirect_to root_path
    else
      flash[:failure] = 'Post cannot be created'
      render :new
    end
  end

  private

  def post_params
    params.required(:post).permit(:title, :category_id, :body)
  end
end
