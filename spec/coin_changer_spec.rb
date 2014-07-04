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
end