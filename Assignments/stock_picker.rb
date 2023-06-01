def stock_picker(stocks)
  max = 0
  best = [0,0]
  (0...stocks.size).each do  |front_index|
    (front_index...stocks.size).each do |back_index|
      if stocks[back_index] - stocks[front_index] > max
        max = stocks[back_index] - stocks[front_index]
        best = [front_index, back_index]
      end
    end
  end
  best
end




p stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1,4]  # for a profit of $15 - $3 == $12