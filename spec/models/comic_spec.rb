require 'spec_helper'

describe Comic do
  it { should validate_presence_of :name }
  it { should validate_presence_of :issue }
  it { should have_and_belong_to_many :artists }
  it { should have_one :cover }
end
