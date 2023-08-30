class PostsController < ApplicationController
  def index
    @posts = Post.all
    if params[:query].present?
      sql_query = <<~SQL
        posts.category @@ :query
        OR posts.content @@ :query
        OR comments.content @@ :query
      SQL
      @posts = @posts.joins(:comments).where(sql_query, query: "%#{params[:query]}%")
    end
  end
end
