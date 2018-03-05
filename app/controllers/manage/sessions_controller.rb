class Manage::SessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by(name: params[:name])
    if student && student.authenticate(params[:password])
      session[:admin_id] = student.id
      redirect_to root_path
    else
      flash.now.alert = 'パスワードもしくはユーザ名が不正です'
      render :new
    end
  end

  def destroy
    session[:admin_id] = nil
    redirect_to root_path
  end
end
