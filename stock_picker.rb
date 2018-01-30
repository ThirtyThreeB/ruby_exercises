def stock_picker(arr)
  current_profit = 0
  max_profit = 0
  profit = 0
  new_arr = []
  best_day_to_buy = 0
  best_day_to_sell = arr.index(arr[1..-1].max)
  
  arr.each do |element|
        puts max_profit
    puts "todays price is #{element}"
    
    new_arr= arr[arr.index(element).. -1]#shortens arr by one
    
    current_profit = new_arr.max - element #best profit if current day is sold later 
    p "current_profit #{current_profit}"
    
    if current_profit > max_profit   
      max_profit = current_profit
      best_day_to_buy = arr.index(element)
    end 
    p "max_profit is #{max_profit}"
    p "current profit is #{new_arr.max} - #{element} = #{current_profit}"
    p new_arr
 
  end
 [best_day_to_buy, best_day_to_sell]
end


stock_picker([17,3,6,9,15,8,6,1,10])
