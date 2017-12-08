class CommentsController < ApplicationController
  http_basic_authenticate_with name: "xwj", password: "123456", only: :destroy
  def create
    @article=Article.find(params[:article_id])
    @comment=@article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article=Article.find(params[:article_id])#先找到具体的Article
    @comment=@article.comments.find(params[:id])#再根据id找到具体的Comment
    @comment.destroy
    redirect_to article_path(@article)

  end
  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
