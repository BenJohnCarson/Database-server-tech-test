describe DataModel do
  subject(:data_model)  { described_class.new }
  
  let(:data)            { {"somekey"=>"somevalue"} }
  
  it "initializes with an empty data_store hash" do
    expect(data_model).to have_attributes(:data_store => {})
  end
  
  context "some data has been stored" do
    
    before do
      data_model.create(data)
    end
    
    describe "#store" do
      it "adds data to data_store" do
        expect(data_model.data_store).to include(data)
      end
    end
    
    describe "#retrieve" do
      it "returns value in data_store associated with the key passed in" do
        key_param = { "key"=>"somekey" }
        expect(data_model.retrieve(key_param)).to eq "somevalue"
      end
    end
  end
end