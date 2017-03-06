describe DataModel do
  subject(:data_model)  { described_class.new }
  
  it "initializes with an empty data_store hash" do
    expect(data_model).to have_attributes(:data_store => {})
  end
  
  describe "#store" do
    it "adds data to data_store" do
      data = { "somekey"=>"somevalue" }
      data_model.store(data)
      expect(data_model.data_store).to include(data)
    end
  end
  
  describe "#retrieve" do
    it "returns value in data_store associated with the key passed in" do
      data = { "somekey"=>"somevalue" }
      data_model.store(data)
      expect(data_model.retrieve("somekey")).to eq "somevalue"
    end
  end
end