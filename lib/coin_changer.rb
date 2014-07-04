class CoinChanger

  def return_change(n)
    result = []
      while n >= 10
        result << 10
         n -= 10
      end

      while n >= 5
        result << 5
        n -= 5
      end

      while n >= 1
        result << 1
        n -= 1
      end
      result
  end
end