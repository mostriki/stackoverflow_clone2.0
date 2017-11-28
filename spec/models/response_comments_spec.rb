require 'rails_helper'

describe ResponseComment do
  it { should belong_to :user }
  it { should belong_to :response }
end
