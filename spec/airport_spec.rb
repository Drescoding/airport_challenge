require 'airport'

describe Airport do
  it { is_expected.to respond_to(:land).with(1).argument }

  it { is_expected.to respond_to(:take_off).with(1).argument }
  it 'confirm that the plane has left the airport' do
    expect(subject.take_off(Plane.new)).to eq("the plane has left")
  end
end
