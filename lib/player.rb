class Player

  START_CREDIT = 1000

  attr_accessor :credit
  attr_reader :name

  def initialize name
    @name = name
    @credit = START_CREDIT
  end

  def show_credit
    puts "You have #{@credit} in this moment"
  end

  def inc_credit amount
    @credit+=amount
  end

  def dec_credit amount
    @credit-=amount
  end

end
