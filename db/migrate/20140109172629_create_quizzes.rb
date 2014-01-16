class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.integer :user_id
      t.string :question1
      t.string :question2
      t.string :question3
      t.string :question4
      t.string :question5
      
      
      t.timestamps
    end
  end
end
