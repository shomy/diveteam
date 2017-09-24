class AnswersController < ApplicationController
  before_action :set_answer, only: [:edit, :update, :destroy]

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

  def edit
  end

  def update
    redirect_to question_path(@question), notice: '回答を編集しました。' if @answer.update(answer_params)
  end

  def destroy
    redirect_to question_path(@question), notice: '回答を削除しました。' if @answer.destroy
  end
  
  private
  # ストロングパラメーター
    def answer_params
      params.require(:answer).permit(:question_id, :content)
    end

    def set_answer
      @answer = Answer.find(params[:id])
      @question = @answer.question
      redirect_to root_path unless view_context.login_user?(@answer.user)
    end
end