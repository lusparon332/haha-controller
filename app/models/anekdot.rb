class Anekdot < ApplicationRecord
  validates_presence_of :text
  t.belongs_to :user
  # validates_presence_of :user
end