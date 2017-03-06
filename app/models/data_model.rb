class DataModel
  
  attr_reader :data_store
  
  def initialize
    @data_store = {}
  end
  
  def create(data)
    data_store[data_key(data)] = data_value(data)
  end
  
  def retrieve(data)
    key = data_value(data)
    data_store[key]
  end
  
  private
  
  def data_key(data)
    data.keys.pop
  end
  
  def data_value(data)
    data.values.pop
  end
end