require "coin_changer"

describe "CoinChanger" do
	it "can create a new instance of CoinChanger "do	
		coin = CoinChanger.new
		expect(change).not_to be_nil
	end

	it "returns [] for amount 0" do
		coin = CoinChanger.new
		expect(coin.return_change(0)).to eq []
	end

	xit "returns change for 1 cent" do
		
	end
end