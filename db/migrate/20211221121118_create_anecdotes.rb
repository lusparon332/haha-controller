class CreateAnecdotes < ActiveRecord::Migration[6.1]
  def change
    create_table :anecdotes do |t|
      t.text :text, null: false
      # t.user :user, null: false
      t.timestamps
    end
  end
end
