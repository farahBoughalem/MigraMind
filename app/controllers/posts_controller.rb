class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
    @comment = Comment.new
    @like = Like.new

    if params[:query].present?
      sql_query = <<~SQL
        posts.category @@ :query
        OR posts.category ILIKE :query
        OR posts.content @@ :query
        OR posts.content ILIKE :query
        OR comments.content @@ :query
        OR comments.content ILIKE :query
      SQL
      @posts = @posts.left_outer_joins(:comments).where(sql_query, query: "%#{params[:query]}%").distinct
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: "posts/posts", locals: { posts: @posts }, formats: [:html] }
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to posts_path, notice: 'Post was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:category, :content)
  end
end
