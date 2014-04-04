require 'spec_helper'

describe Comic do
  it { should validate_presence_of :name }
  it { should validate_presence_of :issue }
end
