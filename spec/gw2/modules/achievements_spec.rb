# frozen_string_literal: true

require "json"

RSpec.describe Gw2::Api::Achievements do
  before do
    @client = Gw2::Api::Client.new(api_key: ENV.fetch("GW2_API_KEY", nil))
  end

  it "returns achievements" do
    response = @client.achievements(ids: "1840,910")
    expect(response.code).to eq("200")
  end

  it "returns daily achievements groups" do
    response = @client.achievements_groups
    expect(response.code).to eq("200")
  end

  it "returns daily achievements categories" do
    response = @client.achievements_categories
    expect(response.code).to eq("200")
  end
end
