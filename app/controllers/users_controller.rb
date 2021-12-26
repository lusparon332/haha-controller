class UsersController < ApplicationController
  def new
    @username = 'Имя пользователя'
    @password = 'Пароль'
    @password_confirmation = 'Подтвердите пароль'
    @register = 'Зарегистрироваться'
  end
  def create

  end
end