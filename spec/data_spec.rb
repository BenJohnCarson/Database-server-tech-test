describe DataModel do
  subject(:data_model)  { described_class.new }
  
  it "initializes with an empty data_store hash" do
    expect(data_model).to have_attributes(:data_store => {})
  end
  
  describe "#store" do
    it "adds data to data_store" do
      data = { somekey: "somevalue" }
      data_model.store(data)
      expect(data_model.data_store).to include(data)
    end
  end
end