require "coin_changer"

describe "CoinChanger" do
	let(:change) {CoinChanger.new}

	it "can create a new instance of CoinChanger "do	
		expect(change).not_to be_nil
	end

	it "returns [] for amount 0" do
		expect(coin.return_change(0)).to eq []
	end

	xit "returns change for 1 cent" do
		
	end
end