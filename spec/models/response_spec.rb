require 'rails_helper'

describe Response do
  it { should have_many :comments}
  it { should belong_to :user}
  it { should belong_to :question}

end
