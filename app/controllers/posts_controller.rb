class PostsController < ApplicationController
  before_action :set_post, only: [ :show, :edit, :update, :destroy]

  before_action :set_params, only: [:index]

  skip_before_action :verify_authenticity_token

    def index
        @posts = Post.order(created_at: :asc)
    end


    def create
      @post = Post.new(post_params)
      @post.save
      redirect_to post_path(@post)
    end

    def new
      @post= Post.new
    end

    def show
    @post = Post.find(params[:id])
    end

    def update
      if @post.update(post_params)
        redirect_to post_path(@post)
      else
        render :edit
      end
    end

    def destroy
    @post.destroy
    redirect_to posts_path
    end


    private

    def post_params
      params.require(:post).permit(:title, :content, :category, :illustration, :illustration_cache, :date, :place)

    end

    def set_params
    @params = params
    end

    def set_post
    @post = Post.find(params[:id])

    end

end
