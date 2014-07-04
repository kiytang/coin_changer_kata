require "coin_changer"

describe "CoinChanger" do

	let(:coin) {CoinChanger.new}

	it "can create a new instance of CoinChanger "do	
		expect(coin).not_to be_nil
	end

	it "returns [] for amount 0" do
		expect(coin.return_change(0)).to eq []
	end

	it "returns change for 1 cent" do
		expect(coin.return_change(1)). to eq [1]	
	end

	it "returns change for 2 cents" do
		expect(coin.return_change(2)).to eq [1,1]
	end

	it "returns change for 3 cents" do
		expect(coin.return_change(3)).to eq [1,1,1]	
	end

	it "returns change for a Nickel" do
		expect(coin.return_change(5)).to eq [5]
	end

	it "returns change for 6" do
		expect(coin.return_change(6)).to eq [5,1]
	end

	it "returns change for 7" do
		expect(coin.return_change(7)).to eq [5,1,1]	
	end

	it "returns change for a Dime" do
		expect(coin.return_change(10)).to eq [10]	
	end

	it "returns change for 20" do
		expect(coin.return_change(20)).to eq [10,10]	
	end

	it "returns change for 21" do
		expect(coin.return_change(21)).to eq [10,10,1]
	end

	it "returns change for a Quarter" do
		expect(coin.return_change(25)).to eq [25]
	end

	it "returns change for 28" do
		expect(coin.return_change(28)).to eq [25,1,1,1]		
	end

	it "returns change for a half dollar" do
		expect(coin.return_change(50)).to eq [50]
	end

	it "returns change for a Golden dollar" do
		expect(coin.return_change(100)).to eq [100]
		
	end
end