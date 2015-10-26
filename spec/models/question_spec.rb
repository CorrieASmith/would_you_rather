require 'rails_helper'

describe Question do
  it { should validate_presence_of :name }
  it { should have_many :conditions }
end
