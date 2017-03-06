describe DataModel do
  subject(:data_model)  { described_class.new }
  
  it "initializes with an empty data_store hash" do
    expect(data_model).to have_attributes(:data_store => {})
  end
end