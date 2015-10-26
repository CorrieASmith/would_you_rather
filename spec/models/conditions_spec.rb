require 'rails_helper'

describe Condition do
  it { should validate_presence_of :description }
  it { should belong_to :question }
end
