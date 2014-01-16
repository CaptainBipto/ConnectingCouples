class Quiz < ActiveRecord::Base

attr_accessible :question1, :question2, :question3, :question4, :question5, :user_id

belongs_to :user

end
