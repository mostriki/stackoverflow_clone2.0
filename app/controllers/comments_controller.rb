class CommentsController < ApplicationController
  before_action :authorize, only: [:new, :create]

  def new
    if params[:question_id]
      @question = Question.find(params[:question_id])
      @comment = @question.comments.new
    elsif params[:response_id]
      @response = Response.find(params[:response_id])
      @comment = @response.comments.new
    end
  end

  def create
    if params[:question_id]
      @question = Question.find(params[:question_id])
      @comment = @question.comments.new(comment_params)
      if @comment.save
        flash[:notice] = "Comment Submitted"
        redirect_to question_path(@question)
      else
        render :new
      end
    elsif params[:response_id]
      @response = Response.find(params[:response_id])
      @question = Question.find(@response.question_id)
      @comment = @response.comments.new(comment_params)
      if @comment.save
        flash[:notice] = "Comment Submitted"
        redirect_to question_path(@question)
      else
        render :new
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :user_id)
  end
end
