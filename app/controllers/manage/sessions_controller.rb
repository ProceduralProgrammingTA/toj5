class Manage::SessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by(name: params[:name])
    if admin && admin.authenticate(params[:password])
      session[:admin_id] = admin.id
      redirect_to manage_path
    else
      flash.now.alert = 'パスワードもしくはユーザ名が不正です'
      render :new
    end
  end

  def destroy
    session[:admin_id] = nil
    redirect_to manage_path
  end
end
