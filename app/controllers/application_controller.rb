class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_student
  helper_method :current_admin
  helper_method :authenticate_student!
  helper_method :authenticate_admin!
  helper_method :toj_file_path

  def current_student
    @current_student ||= Student.find(session[:student_id]) if session[:student_id]
  end

  def authenticate_student!
    redirect_to root_path if current_student.blank?
  end

  def current_admin
    @current_admin ||= Admin.find(session[:admin_id]) if session[:admin_id]
  end

  def authenticate_admin!
    redirect_to manage_path if current_admin.blank?
  end

  def toj_file_path(obj)
    @toj_file_path = File.join(ENV['TOJ_FILE_ROOT'], "#{Time.now.year}", obj.class.name, obj.id)
  end
end
