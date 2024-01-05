class SessionsController < ApplicationController
  def new
    # render login form
  end

  def create
    @student = Student.find_by_email(params[:email])

    if @student.present?
      if @student.password == params[:password]
        session[:student_id] = @student.id
        redirect_to subjects_path, notice: 'Loggded in successfully'
      end
    else
      flash[:error] = 'Invaild email or password_digest'
      redirect_to login_path
      # render :new, aler: "you con't update another Admins service."
    end
  end

  def destroy
    session.delete(:student_id)
    current_user = nil?
    redirect_to login_path, notice: 'Loggout successfully '
  end
end
