class QuestionsController < ApplicationController
  def index
    @questions = Question.all.paginate(:per_page => 3, :page => params[:page])
  end
  def show
    @question = Question.find(params[:id])
  end
  def edit
    @question = Question.find(params[:id])
  end
  def new
    @question = Question.new
    @timer_thingie = true
  end
  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Question saved successfully"
      respond_to do |format|
        format.html {redirect_to questions_path}
        format.js
      end
    else
      flash[:alert] = "Question failed to save"
      render :new
    end
  end
  def update
    @question = Question.find(params[:id])
    @question = @question.update(question_params)
  end
  def destroy
    @question = Question.find(params[:id])
    if @question.delete
      flash[:notice] = "Question deleted"
      redirect_to questions_path
    else
      flash[:alert] = "Question failed to delete"
    end
  end
  private
  def question_params
    params.require(:question).permit(:content, :name)
  end
end
