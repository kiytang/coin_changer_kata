class CoinChanger

  COINS = [100,50,25,10,5,1]

  def return_change(n)
    result = []
    COINS.each do |coin|
      while n >= coin
        result << coin
         n -= coin
      end
    end
    result
  end
end