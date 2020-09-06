RSpec.describe For::Yield do
  it "has a version number" do
    expect(For::Yield::VERSION).not_to be nil
  end

  it "unwraps options" do
    for_ Option(1), Option(2) do |a, b|
      expect(a).to eq(1)
      expect(b).to eq(2)
    end
  end

  it "raises ObjectsNotProvidedError" do
    expect { for_ }.to raise_error ObjectsNotProvidedError
  end

  it "raises NotContainerTypesError" do
    expect { for_ Option(1), None }.to raise_error NotContainerTypesError
  end

  it "raises HeterogeneousObjectsError" do
    expect { for_ Option(1), Option("t") }.to raise_error HeterogeneousObjectsError
  end
end
