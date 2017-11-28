require 'rails_helper'

describe Question do
  it { should have_many :responses}
  it { should have_many :comments}
  it { should belong_to :user}
end
