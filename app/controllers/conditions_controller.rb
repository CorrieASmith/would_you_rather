class ConditionsController < ApplicationController
  def show
    @question = Question.find(params[:question_id])
    @condition = Condition.find(params[:id])
    redirect_to question_path(@condition.question)
  end

  def new
    @question = Question.find(params[:question_id])
    @condition = @question.conditions.new
  end

  def create
    @question = Question.find(params[:question_id])
    @condition = @question.conditions.new(condition_params)
    if @condition.save
      redirect_to question_path(@condition.question)
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:question_id])
    @condition = Condition.find(params[:id])
    render :edit
  end

  def update
    @question = Question.find(params[:question_id])
    @condition = Condition.find(params[:id])
    if @condition.update(condition_params)
      redirect_to question_path(@condition.question)
    else
      render :edit
    end
  end

  def destroy
    @condition = Condition.find(params[:id])
    question_id = params[:question_id]
    @condition.destroy
    redirect_to question_path(question_id)
  end

  private
  def condition_params
    params.require(:condition).permit(:description, :chosen)
  end
end
