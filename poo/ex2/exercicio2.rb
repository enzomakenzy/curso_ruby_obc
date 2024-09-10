class FinancialTransaction 
  attr_reader :to, :from, :amount
  attr_accessor :completed

  def initialize(to, from, amount, completed)
    @to = to 
    @from = from
    @amount = amount
    @completed = completed
  end
end

transaction = FinancialTransaction.new("Enzo", "Valentina", 10, false)
puts transaction.to
puts transaction.from
puts transaction.amount
puts transaction.completed
transaction.completed = true
puts transaction.completed