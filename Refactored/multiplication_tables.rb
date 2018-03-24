class MultiplicationTables
  def self.build(number)
    (1..10).inject({}) do |hash, value|
      hash.merge({"#{value}x#{number}" => value * number})
    end
  end
end
