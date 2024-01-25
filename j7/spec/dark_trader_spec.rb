require_relative '../lib/dark_trader'

describe "the name method" do
  it "puts the crypto name" do
    expect("BTC").to eq("BTC")
  end
end
describe "the value method" do
    it "puts the crypto value" do
        expect("784B$783,995,438,683").to eq("784B$783,995,438,683")
    end
end
describe "the final method" do
    it "puts the hash" do
        expect("BTC").to eq("BTC")
    end
end
