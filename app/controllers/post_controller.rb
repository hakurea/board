class PostController < ApplicationController
  
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def new
  end

  def create
    @t = params[:title] 
    @c = params[:content]

    Post.create(title: @t, content: @c)
    redirect_to '/post/index'
  end

  def show

  end

  def index
    @posts = Post.all
  end

  def destroy
    @post.destroy
    redirect_to '/post/index'
  end

  def edit
    #show와 create합쳐진 형태      
  end

  def update
    @t = params[:title] 
    @c = params[:content]
    
    @post.update(title: @t, content: @c)
    redirect_to "/post/show/#{@id}"
  end

private
  def set_post
    @id = params[:id]
    @post = Post.find(@id)
  end
end
