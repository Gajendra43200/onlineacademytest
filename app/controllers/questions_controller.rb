class QuestionsController < ApplicationController
  before_action :set_subject
  before_action :set_question, only: %i[show edit update destroy]

  def show; end

  def index
    @questions = Question.all
  end

  def new
    if params[:subject_id]
      @subject = Subject.find(params[:subject_id])
      @questions = @subject.questions.new
    else
      @services = Subject.all
    end
    @question = Question.new
  end

  def create
    @subject = Subject.find(params[:question][:subject_id])
    @question = @subject.questions.new(question_params)
    if @question.save
      redirect_to subject_question_path(@subject, @question), notice: 'Question was successfully created.'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @question.update(question_params)
      redirect_to subject_question_path(@subject, @question), notice: 'Question was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @question.destroy
    redirect_to subject_path(@subject), notice: 'Question was successfully destroyed.'
  end

  private

  def set_subject
    @subject = Subject.find(params[:subject_id])
  end

  def set_question
    @question = @subject.questions.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:content)
  end
end
