class HomeController < ApplicationController
  def index
    @auth = 'Авторизация'
    @register = 'Регистрация'
  end
end