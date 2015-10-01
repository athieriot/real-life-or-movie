class AnswersController < ApplicationController

  http_basic_authenticate_with name: "admin", password: "password", only: :destroy

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params)

    if @question.movie? == @answer.reallife
      render :wrong
    else
      render :correct
    end
  end

  def destroy
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    @answer.destroy
    redirect_to question_path(@question)
  end
 
  private
    def answer_params
      params.require(:answer).permit(:reallife, :movie)
    end
end
