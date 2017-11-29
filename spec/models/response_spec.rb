require 'rails_helper'

describe Response do
  it {should belong_to :question }
  it { should belong_to :user}
  it { should have_many(:comments)}
end
