class HomesController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.name = params[:post][:name]
    @post.title = params[:post][:title]
    @post.content = params[:post][:content]
    @post.save
    
    redirect_to '/'
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.name = params[:post][:name]
    @post.title = params[:post][:title]
    @post.content = params[:post][:content]
    @post.save
    
    redirect_to '/'
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    
    redirect_to '/'
  end
  
end
