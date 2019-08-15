RSpec.describe DistanceCalc do
  it 'has a version number' do
    expect(DistanceCalc::VERSION).not_to be nil
  end

  describe '.calc' do
    let!(:response) { DistanceCalc.calc(point1, point2) }
    let!(:point1) { { lat: 41.8892699, long: 12.4923319 } }
    let!(:point2) { { lat: 41.8886001, long: 12.4903215 } }

    it 'returns distance' do
      expect(response).to be_kind_of(Integer)
    end
  end
end
