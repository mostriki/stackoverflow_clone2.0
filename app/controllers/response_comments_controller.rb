class ResponseCommentsController < ApplicationController
  before_action :authorize, only: [:new, :create]

  def new
    @response = Response.find(params[:response_id])
    @response_comment = @response.response_comments.new
  end

  def create
    @response = Response.find(params[:response_id])
    @question = Question.find(@response.question_id)
    @response_comment = @response.response_comments.new(response_comment_params)
    if @response_comment.save
      flash[:notice] = "Comment Submitted"
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  private

  def response_comment_params
    params.require(:response_comment).permit(:body, :user_id)
  end
end
