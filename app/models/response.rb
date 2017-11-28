class Response< ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  has_many :response_comments

end
