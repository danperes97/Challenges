class BankBox
  attr_reader :available_cash, :total_available

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
    self.available_cash.reduce(0) do |acc, arr|
      acc += arr[0].to_i * arr[1].to_i
    end
  end

  def money_taken_hash(value)
    self.available_cash.reduce([]) do |acc, arr|
      if arr[0].to_i <= value
        value -= arr[0].to_i
        acc << arr[0].to_i
      else
        acc
      end
    end
  end

  def take_money(value)
    money = money_taken_hash(value)
    money.reduce(&:+) == value ? money : :not_availabe
  end
end
