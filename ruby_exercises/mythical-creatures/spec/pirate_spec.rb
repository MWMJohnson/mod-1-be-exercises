require 'rspec'
require './lib/pirate'

RSpec.describe Pirate do
  it 'has a name' do
    pirate = Pirate.new('Jane')
    expect(pirate.name).to eq('Jane')
  end

  it 'can have a different name' do
    pirate = Pirate.new('Blackbeard')
    expect(pirate.name).to eq('Blackbeard')
  end

  it 'is a scallywag by default' do
    pirate = Pirate.new('Jane')
    expect(pirate.job).to eq('Scallywag')
  end

  it 'is not always a scallywag' do
    pirate = Pirate.new('Jack', 'cook')
    expect(pirate.job).to eq('cook')
  end

  it 'is not cursed by default' do
    pirate = Pirate.new('Jack')

    expect(pirate.cursed?).to be false

    pirate.commit_heinous_act
    expect(pirate.cursed?).to be false

    pirate.commit_heinous_act
    expect(pirate.cursed?).to be false

    pirate.commit_heinous_act
    expect(pirate.cursed?).to be true
  end

  it 'has a booty' do
    # create a pirate
    pirate = Pirate.new("Sarah")
    # check that the pirate starts with 0 booty
    expect(pirate.booty?).to be 0
  end

  it 'gets 100 booty for robbing a ship' do
    # create a pirate
    pirate = Pirate.new("Bob")
    # rob some ships
    # check that the pirate got 100 booty for each ship it robbed

    pirate.steal_a_ship
    expect(pirate.booty?).to eq 100

    10.times do 
      pirate.steal_a_ship
    end

    expect(pirate.booty?).to eq 1100

    5.times do 
      pirate.steal_a_ship
    end

    expect(pirate.booty?).to eq 1600

    4.times do 
      pirate.steal_a_ship
    end

    expect(pirate.booty?).to eq 2000

    
  end

end
