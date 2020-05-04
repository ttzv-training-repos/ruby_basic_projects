def stock_picker(prices)
  best_pair(prices)
end

def uniq_pairs(arr)
  pairs = Hash.new
  arr.each_with_index do |first_el, f_index|
    arr.each_with_index do |sec_el, s_index|
      if first_el != sec_el && s_index > f_index
        pairs[[f_index, s_index]]=[first_el, sec_el]
      end
    end
  end
  pairs
end

def best_pair(pairs) 
  uniq_pairs(pairs).reduce do |acc, k| 
    p k
  end
end

def pair_diff(pair)
  if pair.length == 2
    return pair.first - pair.last
  end
  return 0
end

#stock_picker([17,3,6,9,15,8,6,1,10])

best_pair([17,3,6,9,15,8,6,1,10])

