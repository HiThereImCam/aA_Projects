class Array

    def my_uniq
        new_arr = []

        self.each{ |ele| new_arr << ele if !new_arr.include?(ele) }

        new_arr
    end

    def two_sum
        new_arr = []

        (0...self.length).each do |i|
            (i + 1...self.length).each do |j|
                new_arr << [i,j] if self[i] + self[j] == 0
            end 
        end
        
        new_arr
    end

    def my_transpose 
        new_arr = Array.new(self.length){Array.new}
        # p new_arr
        (0...self.length).each do |i|
            (0...self.length).each do |j|
                new_arr[i] << self[j][i]
            end
        end

        new_arr
    end

    def stock_picker
        greatest_profit = 0
        profit_idx = []

        (0...self.length).each do |i|
            (i+1...self.length).each do |j|
                if self[i] < self[j] #5000 < 8000
                    if self[j] - self[i] > greatest_profit #8000 - 5000 > 0
                        greatest_profit = self[j] - self[i] #0 = 3000
                        profit_idx = [i, j] #profit_idx [0,1]
                    end
                end
            end
        end
        profit_idx
    end

end


