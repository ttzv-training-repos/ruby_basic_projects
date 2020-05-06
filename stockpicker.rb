def stock_picker(prices)
  most_gain = uniq_pairs_2(prices).reduce do |best, price| 
    if pair_diff(best) < pair_diff(price)
      best = price
    end
    best
  end
  return [most_gain[:buy_index], most_gain[:sell_index]]
end

def pair_diff(pair)
 return pair[:sell_price] - pair[:buy_price]
end

def uniq_pairs_2(array)
  excluded_mins = []
  pairs = Array.new
  loop do
    cmin = filtered_min(array, excluded_mins)
    break if cmin[:el] == array.max
    array.each_with_index do |el, i|
      if i > cmin[:index] && el > cmin[:el]
        pairs.push({
          buy_index: cmin[:index],
          sell_index: i,
          buy_price: cmin[:el],
          sell_price: el
        })
      end
    end
    excluded_mins.push(cmin[:el])
  end
  pairs
end

def filtered_min(array, filter_arr)
  min = array.max
  i = 0
  array.each_with_index do |el,  index|
    if el < min && !filter_arr.include?(el)
      min = el
      i = index
    end
  end
  return {index: i, el: min} 
end

stocks = [17,3,6,9,15,8,6,1,10]
stocks_1 = [44, 43, 66, 40, 66, 40, 90, 41]
puts stock_picker(stocks)
puts stock_picker(stocks_1)