class AnecdotesController < ApplicationController
  def index
    @anecdotes = Anecdote.all
  end

  def favourite

  end
end