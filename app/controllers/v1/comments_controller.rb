module V1
  class CommentsController < ApplicationController
    def create
      @post = Post.friend;y.find(params[:id])

      @comment = @post.comments.create(params[:comment]).permit([:name, :body])
      redirect_to post_path(@post)
    end
  end  
end