class TestsController < ApplicationController
  def new
    @subject = Subject.find_by_id(params[:subject_id])
    @subject_question = @subject.questions
    @completed_subjects = CompletedSubject.find(params[:completed_subject_id])
    @test = Test.new
  end

  def create
    @completed_subjects = CompletedSubject.find(params[:completed_subject_id])
    @subject = Subject.find_by_id(params[:subject_id])
    @subject_question = @subject.questions
    @test = Test.new(test_params)
    if @test.save
      redirect_to subject_completed_subject_tests_path, notice: 'Completed subject was successfully created.'
    else
      render :new
    end
  end

  def index
    @tests = Test.all
  end

  private

  def test_params
    params.require(:test).permit(:completed_subject_id, :totel_question, :correct_ans)
  end
end
