class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
    render :new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Your question was submitted successfully!"
      redirect_to "/"
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
    render :edit
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to "/"
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to "/"
  end

  private
  def question_params
    params.require(:question).permit(:name)
  end
end
