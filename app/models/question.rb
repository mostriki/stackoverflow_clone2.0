class Question < ActiveRecord::Base
  belongs_to :user
  has_many :responses
  has_many :question_comments
end
