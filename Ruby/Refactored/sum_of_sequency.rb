class SumOfSequency
  def self.calculate(list)
    list.reduce(&:+)
  end
end
