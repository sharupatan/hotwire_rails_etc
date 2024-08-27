class HomesController < ApplicationController
  def index
  end

  def hotwire_action
    render json: { message: "Hello, World!" }
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    respond_to do |format|
      format.turbo_stream
    end
  end

  def show
    @post = Post.find(params[:id])
    respond_to do |format|
      format.html
      format.turbo_stream
    end
  end
end