class Anecdote < ApplicationRecord
  validates_presence_of :text
  # belongs_to :user
  # validates_presence_of :user
end