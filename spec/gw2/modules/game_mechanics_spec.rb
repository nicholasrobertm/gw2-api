# frozen_string_literal: true

require "json"

RSpec.describe Gw2::Api::GameMechanics do
  before do
    @client = Gw2::Api::Client.new(api_key: ENV.fetch("GW2_API_KEY", nil))
  end

  it "returns specializations ids" do
    response = @client.specializations

    expect(response.code).to eq("200")
  end

  it "returns multiple specializations" do
    response = @client.specializations(ids: "1,2")

    expect(response.code).to eq("200")
  end

  it "returns jade bot ids" do
    response = @client.jade_bots

    expect(response.code).to eq("200")
  end

  it "returns multiple jade bots" do
    response = @client.jade_bots(ids: "2,3")

    expect(response.code).to eq("200")
  end

  it "returns legendary armory ids" do
    response = @client.legendary_armory

    expect(response.code).to eq("200")
  end

  it "returns multiple legendary armory items" do
    response = @client.legendary_armory(ids: "83162,93105")

    expect(response.code).to eq("200")
  end

  it "returns mastery ids" do
    response = @client.masteries

    expect(response.code).to eq("200")
  end

  it "returns multiple masteries" do
    response = @client.masteries(ids: "1,2")

    expect(response.code).to eq("200")
  end

  it "returns mounts" do
    response = @client.mounts

    expect(response.code).to eq("200")
  end

  it "returns mount skin ids" do
    response = @client.mount_skins

    expect(response.code).to eq("200")
  end 

  it "returns multiple mount skins" do
    response = @client.mount_skins(ids: "1,2")

    expect(response.code).to eq("200")
  end

  it "returns mount type ids" do
    response = @client.mount_types

    expect(response.code).to eq("200")
  end

  it "returns multiple mount types" do
    response = @client.mount_types(ids: "griffon,springer")

    expect(response.code).to eq("200")
  end

  it "returns outfit ids" do
    response = @client.outfits

    expect(response.code).to eq("200")
  end

  it "returns multiple outfits" do
    response = @client.outfits(ids: "1,2")

    expect(response.code).to eq("200")
  end

  it "returns ranger pet ids" do
    response = @client.pets

    expect(response.code).to eq("200")
  end

  it "returns multiple ranger pets" do
    response = @client.pets(ids: "1,2")

    expect(response.code).to eq("200")
  end

  it "returns profession ids" do
    response = @client.professions

    expect(response.code).to eq("200")
  end

  it "returns multiple professions" do
    response = @client.professions(ids: "Guardian,Warrior")

    expect(response.code).to eq("200")
  end

  it "returns race ids" do
    response = @client.races

    expect(response.code).to eq("200")
  end

  it "returns skills for a given race" do
    response = @client.races(id: "Asura")

    expect(response.code).to eq("200")
  end

  it "returns skiff ids" do
    response = @client.skiffs

    expect(response.code).to eq("200")
  end

  it "returns multiple skiffs" do
    response = @client.skiffs(ids: "410,413")

    expect(response.code).to eq("200")
  end

  it "returns skill ids" do
    response = @client.skills

    expect(response.code).to eq("200")
  end

  it "returns multiple skills" do
    response = @client.skills(ids: "5516,5517")

    expect(response.code).to eq("200")
  end

  it "returns trait ids" do
    response = @client.traits

    expect(response.code).to eq("200")
  end

  it "returns multiple traits" do
    response = @client.traits(ids: "214,265")

    expect(response.code).to eq("200")
  end

  it "returns legends" do
    response = @client.legends

    expect(response.code).to eq("200")
  end

  it "returns multiple legends" do
    response = @client.legends(ids: "Legend1,Legend2")

    expect(response.code).to eq("200")
  end
end
