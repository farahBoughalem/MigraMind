class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.post = Post.find(params[:post_id])
    @comment.user = current_user
    @comment.save
    respond_to do |format|
      format.html { redirect_to posts_path }
      format.text { render partial: "posts/comment", locals: {comment: @comment}, formats: [:html] }
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
