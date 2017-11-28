class QuestionCommentsController < ApplicationController
  before_action :authorize, only: [:new, :create]

  def new
    @question = Question.find(params[:question_id])
    @question_comment = @question.question_comments.new
  end

  def create
    @question = Question.find(params[:question_id])
    @question_comment = @question.question_comments.new(question_comment_params)
    if @question_comment.save
      flash[:notice] = "Comment Submitted"
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  private

  def question_comment_params
    params.require(:question_comment).permit(:body, :user_id)
  end
end
