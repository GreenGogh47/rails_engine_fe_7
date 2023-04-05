class Merchant
  attr_reader :id, :type, :name

  def initialize(merchant)
    @id = merchant[:id]
    @type = merchant[:type]
    @name = merchant[:attributes][:name]
  end
end