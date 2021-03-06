class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_student
  helper_method :current_admin

  def current_student
    @current_student ||= Student.find(session[:student_id]) if session[:student_id]
  end

  def current_admin
    @current_admin ||= Admin.find(session[:admin_id]) if session[:admin_id]
  end
end
