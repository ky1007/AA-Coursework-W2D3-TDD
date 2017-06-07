require 'tdd'
# require 'rspec'

describe "#remove_dups" do
  it "removes all duplicate elements from an array" do
    expect(remove_dups([1,2,1,3,3])).to eq([1,2,3])
  end
end

describe "#two_sum" do
  it "returns all of the indices of elements whose sum is 0" do
    expect(two_sum([-1, 0, 2, -2, 1])).to eq([[0, 4], [2, 3]])
  end
end

describe "#my_transpose" do
  it "transposes the array (from rows to columns)" do
    expect(my_transpose([
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
      ])).to eq([[0, 3, 6],
                 [1, 4, 7],
                 [2, 5, 8]])
  end
end

describe "#stock_picker" do
  it "returns the most profitable pair of days to buy and sell stock" do
    expect(stock_picker([70, 80, 10, 50, 20, 65, 5])).to eq([2, 5])
  end
end
