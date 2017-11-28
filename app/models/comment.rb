class Comment < ActiveRecord::Base
  belongs_to :user, :response, :question
end
