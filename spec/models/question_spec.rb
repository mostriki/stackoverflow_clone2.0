require 'rails_helper'

describe Question do
  it { should have_many :responses}
  it { should have_many :question_comments}
  it { should belong_to :user}
end
