class ApplicationController < ActionController::Base
  include SessionsHelper
  #Applicationコントローラにこのモジュールをインクルードする（含める）ことによって、Railsの全コントローラでこのモジュールが使用できるようになる
end