# frozen_string_literal: true

require "json"

RSpec.describe Gw2::Api::Characters do
  before do
    @client = Gw2::Api::Client.new(api_key: ENV.fetch("GW2_API_KEY", nil))
    @character = JSON.parse(@client.characters.body)[0]
    
    if @character.include?(" ")
      @character.gsub!(" ", "%20")
    end
  end

  it "returns characters" do
    response = @client.characters

    expect(response.code).to eq("200")
  end

  it "returns character backstory" do
    response = @client.character_backstory(@character)

    expect(response.code).to eq("200")
  end

  it "returns character buildtabs" do
    response = @client.character_buildtabs(@character)

    expect(response.code).to eq("200")
  end

  it "returns character core" do
    response = @client.character_core(@character)

    expect(response.code).to eq("200")
  end

  it "returns character crafting" do
    response = @client.character_crafting(@character)

    expect(response.code).to eq("200")
  end

  it "returns character equipment" do
    response = @client.character_equipment(@character)

    expect(response.code).to eq("200")
  end

  it "returns character equipmenttabs" do
    response = @client.character_equipmenttabs(@character)

    expect(response.code).to eq("200")
  end

  it "returns character inventory" do
    response = @client.character_inventory(@character)

    expect(response.code).to eq("200")
  end

  it "returns character recipes" do
    response = @client.character_recipes(@character)

    expect(response.code).to eq("200")
  end

  it "returns character skills" do
    response = @client.character_skills(@character)

    expect(response.code).to eq("200")
  end

  it "returns character specializations" do
    response = @client.character_specializations(@character)

    expect(response.code).to eq("200")
  end

  it "returns character active buildtabs" do
    response = @client.character_active_buildtabs(@character)

    expect(response.code).to eq("200")
  end

  it "returns character active equipmenttabs" do
    response = @client.character_active_equipmenttabs(@character)

    expect(response.code).to eq("200")
  end

  it "returns character hero points" do
    response = @client.character_hero_points(@character)

    expect(response.code).to eq("200")
  end

  it "returns character quests" do
    response = @client.character_quests(@character)

    expect(response.code).to eq("200")
  end

  it "returns character super adventure box info" do
    response = @client.character_sab(@character)

    expect(response.code).to eq("200")
  end

end
