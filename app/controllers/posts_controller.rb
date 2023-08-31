class PostsController < ApplicationController
  def index
    @posts = Post.all
    @comment = Comment.new

    if params[:query].present?
      sql_query = <<~SQL
        posts.category @@ :query
        OR posts.content @@ :query
        OR comments.content @@ :query
      SQL
      @posts = @posts.left_outer_joins(:comments).where(sql_query, query: "%#{params[:query]}%").distinct
    end
  end
end
