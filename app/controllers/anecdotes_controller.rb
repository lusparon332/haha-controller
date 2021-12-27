class AnecdotesController < ApplicationController
  def index
    @anecdotes = Anecdote.all
    @i = 1;
  end

  def favourite

  end
end
