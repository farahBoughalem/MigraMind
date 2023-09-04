class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    params[:comment_id].present? ? handle_comment : handle_post
  end


  def handle_comment
    @comment = Comment.find(params[:comment_id])
    @like = @comment.likes.new(user: current_user, likable_type: "comment", likable_id: @comment.id)

    if @comment.liked_by_current_user?(current_user)
      # call delete
      @value = "deleted"
      respond_to do |format|
        @comment.likes.find_by(likable_id: @comment.id, user: current_user).destroy
        format.json
      end
    else
      # call create
      @like = @comment.likes.new(user: current_user, likable_type: "comment", likable_id: @comment.id)
      respond_to do |format|
        @value = "created"
        if @like.save
          format.json
        else
          render json: @like.errors, status: :unprocessable_entity
        end
      end
    end
  end


  def handle_post
    @post = Post.find(params[:post_id])

    if @post.liked_by_current_user?(current_user)
      # call delete
      @value = "deleted"
      respond_to do |format|
        @post.likes.find_by(likable_id: @post.id, user: current_user).destroy
        format.json
      end
    else
      # call create
      @like = @post.likes.new(user: current_user, likable_type: "post", likable_id: @post.id)
      respond_to do |format|
        @value = "created"
        if @like.save
          format.json
        else
          render json: @like.errors, status: :unprocessable_entity
        end
      end
    end
  end
end
