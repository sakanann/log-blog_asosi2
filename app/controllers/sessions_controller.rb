class SessionsController < ApplicationController
  def new
  end
end

def create
  user = User.find_by(email: params[:session][:email].downcase)
  if user && user.authenticate(params[:session][:password])
    # ログイン成功した場合
  else
    flash.now[:danger] = 'ログインに失敗しました'
      render :new
    # ログイン失敗した場合
    #フラッシュメッセージを追加して、new.html.erbをレンダリング
  end
end
