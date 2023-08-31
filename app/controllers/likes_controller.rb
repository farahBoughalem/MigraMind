class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    if params[:comment_id].present?
      @comment = Comment.find(params[:comment_id])
      @like = @comment.likes.new(user: current_user, likable_type: "comment", likable_id: @comment.id)
    else
      @post = Post.find(params[:post_id])
      @like = @post.likes.new(user: current_user, likable_type: "post", likable_id: @post.id)
    end

    if @like.save
      render json: @like, status: :created
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end
end
