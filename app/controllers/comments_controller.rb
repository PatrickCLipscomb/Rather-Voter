class CommentsController < ApplicationController
  def show
    @comment = Comment.find(params[:id])
    @question = @comment.question
  end
  def edit
    @comment = Comment.find(params[:id])
    @question = @comment.question
  end
  def new
    @question = Question.find(params[:question_id])
    @comment = @question.comments.new
  end
  def create
    @question = Question.find(params[:question_id])
    @comment = @question.comments.new(comment_params)
    if @comment.save
      flash[:notice] = "Comment saved successfully"
      respond_to do |format|
        format.html {redirect_to questions_path}
        format.js
      end
    else
      flash[:alert] = "Comment failed to save"
      render :new
    end
  end
  def update
    @comment = Comment.find(params[:id])
    @question = @comment.question
    @comment.update(comment_params)
    flash[:notice] = "comment updated successfully"
    redirect_to question_path(@question)
  end
  def destroy
    @comment = Comment.find(params[:id])
    @question = @comment.question
    if @comment.delete
      flash[:notice] = "Comment deleted"
      redirect_to question_path(@question)
    else
      flash[:alert] = "Comment failed to delete"
    end
  end
  private
  def comment_params
    params.require(:comment).permit(:content, :question_id)
  end
end
