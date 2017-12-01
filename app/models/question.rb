class Question < ActiveRecord::Base
  belongs_to :user
  has_many :responses
  has_many :comments, :as => :commentable
  validates :title, :presence => true
  validates :body, :presence => true
end
