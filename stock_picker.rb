def stock_picker(prices)
    best_combo = []
    profit = 0
    current_profit = 0

    prices.each_with_index do |price, index|
        prices.each_with_index do |price2, index2|
            current_profit = price2 - price

            if current_profit > profit && index < index2
                profit = current_profit
                best_combo = [index, index2]
            end
        end
    end
    p best_combo
end

stock_picker([17,3,6,9,15,8,6,1,10])