class CompletedSubjectsController < ApplicationController
  def new
    @subject = Subject.find(params[:subject_id])
    @completed_subject = CompletedSubject.new
  end

  def create
    @subject = Subject.find(params[:subject_id])
    @completed_subject = @subject.completed_subjects.build(completed_subject_params)
    @completed_subject = CompletedSubject.new(completed_subject_params)
    if @completed_subject.save
      redirect_to subject_path(@completed_subject), notice: 'Completed subject was successfully created.'
    else
      render :new
    end
  end

  def index
    @completed_subjects = CompletedSubject.all
  end

  def show
    byebug
    @completed_subjects = CompletedSubject.find_by(id: params[:id])
  end

  private

  def completed_subject_params
    params.require(:completed_subject).permit(:student_id, :subject_id)
  end
end
