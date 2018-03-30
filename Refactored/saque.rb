class BankBox
  attr_reader :available_cash, :total_available
  attr_writer :total_available

  def initialize()
    @available_cash   = available_cash_hash
    @total_available  = total_count
  end

  def available_cash_hash
    {
      "100" => 1,
      "50"  => 2,
      "20"  => 4,
      "10"  => 8,
      "5"   => 16,
      "1"   => 32
     }
  end

  def total_count
    available_cash_hash.transform_keys(&:to_i).reduce(0) do |acc, arr|
      acc += arr[0] * arr[1]
    end
  end

  def money_taken_hash(value)
    self.available_cash.transform_keys(&:to_i).reduce([]) do |acc, arr|
      return acc unless arr[0] <= value
      value -= arr[0]
      acc << arr[0]
    end
  end

  def take_money(value)
    money = money_taken_hash(value)
    if money.reduce(&:+) == value
      debit_money(value)
      money
    else
      :not_availabe
    end
  end

  private

  def debit_money(value)
    self.total_available -= value
  end
end
