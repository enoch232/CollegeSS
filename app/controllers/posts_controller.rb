class PostsController < ApplicationController
  before_action :set_post, only: [:show, :destroy, :update, :edit]
  before_action :authenticate_user! , except: [:index]
  def index
    
    @posts = Post.all
    @posts = Post.all.where(["title LIKE ?","%#{params[:search]}%"]) if params[:search].present?
    respond_to do |format|
      format.html{render :index}
      format.js{}
    end
  end

  def show

  end
  def new
    @post = Post.new
    @post.user = current_user

  end
  def create
    @post = Post.new(params_post)
    @post.user = current_user
    if @post.save
      if params[:images]
        params[:images].each do |image|
          @post.pictures.create(image: image)
        end
      end
      redirect_to root_path
      #render plain: params[:post]
    else
      render :new
    end
      
  end
  def destroy
    @post.destroy
    redirect_to root_path
  end
  def edit
  end
  def update
    if @post.update(params_post)
      redirect_to root_path
    else
      render :edit
    end


  end
  
  private
  def set_post
    @post = Post.find(params[:id])
  end
  def params_post
    params.require(:post).permit(:title, :condition, :images, :description, :price, :category, :keyword, :specific_category, :state, :school, :user_id)
  end
end
