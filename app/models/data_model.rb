class DataModel
  
  attr_reader :data_store
  
  def initialize
    @data_store = {}
  end
  
  def store(data)
    data_store.merge!(data)
  end
end