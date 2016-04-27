require 'spec_helper'

describe Trading::Errors do
  subject { Trading::Errors::TradingException.new(type: :error)}
  it 'can create Exception' do
    expect(subject.type).to eql :error
  end

end
