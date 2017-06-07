def remove_dups(arr)
  new_arr = []

  arr.each do |ele|
    new_arr << ele unless new_arr.include?(ele)
  end

  new_arr
end

def two_sum(arr)
  pairs = []

  arr.each_with_index do |first, i|
    (i + 1...arr.length).each do |j|
      pairs << [i, j] if first + arr[j] == 0
    end
  end

  pairs
end

def my_transpose(arr)
  helper_hash = Hash.new { |h, k| h[k] = [] }

  arr.each_with_index do |nested_arr, row|
    nested_arr.each_with_index do |num, col|
      helper_hash[col] << num
    end
  end

  helper_hash.values
end

def stock_picker(prices)
  best_days = []

  difference = 0
  prices.each_with_index do |price, prev_day|
    (prev_day + 1...prices.length).each do |next_day|
      potential_difference = prices[next_day] - prices[prev_day]
        if potential_difference > difference
          difference = potential_difference
          best_days = [prev_day, next_day]
        end
    end
  end

  best_days
end
