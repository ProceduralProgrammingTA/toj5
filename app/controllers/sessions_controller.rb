class SessionsController < ApplicationController
  def new
  end

  def create
    student = Student.find_by(name: params[:name])
    if student && student.authenticate(params[:password])
      session[:student_id] = student.id
      redirect_to root_path
    else
      flash.now.alert = 'パスワードもしくはユーザ名が不正です'
      render :new
    end
  end

  def destroy
    session[:student_id] = nil
    redirect_to root_path
  end
end
