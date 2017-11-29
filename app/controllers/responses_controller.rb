class ResponsesController < ApplicationController
  before_action :authorize, only: [:new, :create, :edit, :destroy, :update]
  
  def new
    @question = Question.find(params[:question_id])
    @response = @question.responses.new
  end

  def create
    @question = Question.find(params[:question_id])
    @response = @question.responses.new(response_params)
    if @response.save
      flash[:notice] = "Response Submitted"
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  def edit
    @response = Response.find(params[:id])
  end

  def update
    @response = Response.find(params[:id])
    if @response.update(response_params)
      flash[:notice] = "Response Updated"
      redirect_to responses_path
    else
      render :edit
    end
  end

  def destroy
    @response = Response.find(params[:id])
    @response.destroy
    flash[:notice] = "Response successfully deleted!"
    redirect_to responses_path
  end

  private
  def response_params
    params.require(:response).permit(:title, :body, :user_id)
  end

end
