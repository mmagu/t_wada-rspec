require 'rspec'
require_relative '../lib/message_filter'

describe MessageFilter do
  before do
    @filter = MessageFilter.new('foo')
  end
  it {
    @filter.detect?('hello from foo').should == true
  }

  it {
    @filter.detect?('hello, world').should == false
  }
end
