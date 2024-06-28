def stock_picker(stock_prices)
  day = 0
  buy_price = stock_prices[day]
  sell_price = stock_prices[day + 1]
  profit = 0
  buy_sell_day = [buy_price, sell_price]
  
  until day >= stock_prices.length - 1
    day += 1
    if sell_price - buy_price >= profit
      profitable_day = true
      profit = sell_price - buy_price
      final_buy_sell = [buy_price, sell_price]
    else
      buy_price = stock_prices[day]

    end      
      sell_price = stock_prices[day + 1]
  end

  unless profitable_day
    final_buy_sell = [stock_prices[day - 1], stock_prices[day]]
  end
  [stock_prices.index(final_buy_sell[0]), stock_prices.rindex(final_buy_sell[1])]
end

puts stock_picker([5, 4, 3, 2, 1])