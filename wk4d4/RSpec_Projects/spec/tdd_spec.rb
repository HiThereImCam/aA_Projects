require "tdd"

describe Array do
    
    describe "#my_unique" do 
        let(:array){[1,2,1,3,3]} # array = []
        let(:uniq_array){ array.dup } #
        it "should remove duplicates from array " do
            expect(array.my_uniq).to eq([1,2,3])
        end

        it "doesn't modify the original array" do 
            uniq_array.each do |val|
                expect(array).to include(val)
            end
        end
    end

    describe "#two_sum" do
        let(:array){[-1,0,2,-2,1]}
        let(:zeros){[3,0,0,0]}

        it "should find all pairs of indexes where the sums of those positions sum to zero" do
            expect(array.two_sum).to eq([[0,4], [2,3]])
        end

        it "adds two zeros" do
            expect(zeros.two_sum).to eq([[1,2], [1,3], [2,3]])
        end
    end

    describe "#my_transpose" do
        let(:matrix){[[0, 1, 2],[3, 4, 5],[6, 7, 8]]}

        it "should return a transposed 2D array" do
            expect(matrix.my_transpose).to eq([[0,3,6], [1,4,7], [2,5,8]])
        end
    end

    describe "#stock_picker" do
        let(:stocks){[5000, 8000, 5500, 10000, 7000]}
        let(:crash){[5,4,3,2,1]}
        it "finds buy and sell days of the maximum profit" do
            expect(stocks.stock_picker).to eq([0,3])
        end

        it "does not buy during scuffed market" do
            expect(crash.stock_picker).to be_empty
        end
    end    
end

