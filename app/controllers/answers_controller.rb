class AnswersController < ApplicationController
  def create
    @answer = current_user.answers.build(answer_params)
    @question = @answer.question
    respond_to do |format|
      if @answer.save
        format.html { redirect_to question_path(@question), notice: '回答を投稿しました。' }
        format.js { render :index }
      else
        format.html { render :new }
      end
    end
  end
  
  private
  # ストロングパラメーター
    def answer_params
      params.require(:answer).permit(:question_id, :content)
    end
end