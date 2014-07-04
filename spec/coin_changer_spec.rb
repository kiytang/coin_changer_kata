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

	it "returns change for 5" do
		expect(coin.return_change(5)).to eq [5]
	end

	it "returns change for 6" do
		expect(coin.return_change(6)).to eq [5,1]
	end

	it "returns change for 7" do
		expect(coin.return_change(7)).to eq [5,1,1]	
	end

	it "returns change for 10" do
		expect(coin.return_change(10)).to eq [10]	
	end

	it "returns change for 20" do
		expect(coin.return_change(20)).to eq [10,10]	
	end
end