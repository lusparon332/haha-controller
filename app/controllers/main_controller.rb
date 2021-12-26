class MainController < ApplicationController
  def index
    @All_anecdotes = 'Все анекдоты'
    @Best_anecdotes = 'Избранное'
  end
end