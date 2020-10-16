class TowersOfHanoi

    def initialize
        @stacks = [
                   [3,2,1],
                   [],
                   []
                   ]
    end
    
    def play
        while !won?
            p @stacks
            puts "select stack you would like to move"
            from = gets.chomp.to_i

            puts "select stack you would like to place"
            to = gets.chomp.to_i
            if valid_moves?(from, to)
                @stacks[to] << @stacks[from].pop
            else
                puts "Invalid move, fam"
            end
            p @stacks
        end
        puts "Congrats, you have won!"
    end

    def valid_moves?(from, to)
        if [from, to].all?{|move| !move.between?(0,2)}
            return false
        end
        
        if @stacks[from].empty? 
            return false
        elsif !@stacks[to].empty? && !@stacks[from].empty?
            return true if @stacks[to].last > @stacks[from].last
        else
            return true
        end
    end

    def won?
        @stacks[0].empty? && @stacks[1..-1].any?{|stack| stack == [3,2,1]}
    end
end

