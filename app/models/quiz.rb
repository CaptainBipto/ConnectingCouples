class Quiz < ActiveRecord::Base
has_one :user
attr_accessible :question1, :question2, :question3, :question4, :question5
end
