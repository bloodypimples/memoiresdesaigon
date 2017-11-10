class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:id])
    @comment = Comment.new(get_comment_params)
    @comment.article = @article

    if @comment.save
      redirect_to article_path(@article) + "#reply_form", notice: "Your reply has been posted."
    else
      redirect_to article_path(@article) + "#reply_form", alert: "Please make sure you have filled in every required field."
    end
  end

  private

  def get_comment_params
    params[:comment].permit(:body, :article_id, :user_name, :user_email)
  end
end
