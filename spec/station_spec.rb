require 'station'

describe Station do

  subject {described_class.new(name: "Angel",zone: 2)}

  it 'knows its name' do
    expect(subject.name).to eq("Angel")
  end

  it 'knows its zone' do
    expect(subject.zone).to eq(2)
  end

end
