require 'rspec'
require './lib/werewolf'

RSpec.describe Werewolf do
  it 'has a name' do
    werewolf = Werewolf.new('David')
    expect(werewolf.name).to eq('David')
  end

  it 'has a location' do
    werewolf = Werewolf.new('David', 'London')
    expect(werewolf.location).to eq('London')
  end

  it 'is by default human' do
    werewolf = Werewolf.new('David', 'London')
    expect(werewolf.human?).to be true
  end

  it 'when starting as a human, changing makes it turn into a werewolf' do
    werewolf = Werewolf.new('David', 'London')
    werewolf.change!
    expect(werewolf.wolf?).to be true
    expect(werewolf.human?).to be false
  end

  it 'when starting as a human, changing again makes it be human again' do
    werewolf = Werewolf.new('David', 'London')
    expect(werewolf.human?).to be true

    werewolf.change!

    expect(werewolf.human?).to be false

    werewolf.change!

    expect(werewolf.human?).to be true
  end

  it 'when starting as a werewolf, changing a second time makes it a werewolf' do
    werewolf = Werewolf.new('David', 'London')

    werewolf.change!
    expect(werewolf.wolf?).to be true

    werewolf.change!
    werewolf.change!

    expect(werewolf.wolf?).to be true
  end

  it 'is not hungry by default' do
   
  werewolf = Werewolf.new("Gary")
  expect(werewolf.hungry?).to be false
  end

  it 'becomes hungry after changing to a werewolf' do
    
    werewolf = Werewolf.new('Dan', 'Dallas')

    expect(werewolf.hungry?).to be false
    expect(werewolf.human?).to be true

    werewolf.change!
    expect(werewolf.hungry?).to be true
    expect(werewolf.human?).to be false
  end

  class Victim
    attr_accessor :status

    def initialize
      @status = :alive
    end
  end

  it 'consumes a victim' do
    # your code here
    werewolf2 = Werewolf.new("Abe")

    werewolf2.consume!
    expect(werewolf2.eaten?).to eq 0
    expect(werewolf2.status?).to eq :alive
    

    werewolf2.change!

    werewolf2.consume!
    expect(werewolf2.eaten?).to eq 1
    expect(werewolf2.status?).to eq :dead

    5.times do
    werewolf2.consume!
    end 
    expect(werewolf2.eaten?).to eq 6
    expect(werewolf2.status?).to eq :dead
  

  end

  it 'cannot consume a victim if it is in human form' do
    # your code here
    werewolf2 = Werewolf.new("Bill")

    werewolf2.consume!
    expect(werewolf2.eaten?).to eq 0
    expect(werewolf2.status?).to eq :alive

    werewolf2.change!

    werewolf2.consume!
    expect(werewolf2.eaten?).to eq 1
    expect(werewolf2.status?).to eq :dead

    werewolf2.change!

    werewolf2.consume!
    expect(werewolf2.eaten?).to eq 1
    expect(werewolf2.status?).to eq :dead

    werewolf2.change!

    werewolf2.consume!
    expect(werewolf2.eaten?).to eq 2
    expect(werewolf2.status?).to eq :dead


  end

  it 'a werewolf that has consumed a human being is no longer hungry' do
    # your code here

    werewolf2 = Werewolf.new("Bob")

    expect(werewolf2.hungry?).to be false


    werewolf2.change!

    expect(werewolf2.hungry?).to be true

    werewolf2.consume!
    expect(werewolf2.hungry?).to be false
    expect(werewolf2.eaten?).to eq 1
    
    werewolf2.change!
    expect(werewolf2.hungry?).to be false

    
  end

  it 'a werewolf who has consumed a victim makes the victim dead' do
    werewolf2 = Werewolf.new("Che")

    expect(werewolf2.status?).to eq :alive

    werewolf2.change!
    werewolf2.consume!

    expect(werewolf2.status?).to eq :dead
    expect(werewolf2.eaten?).to eq 1

    19.times do
      werewolf2.consume!
    end

    expect(werewolf2.status?).to eq :dead
    expect(werewolf2.eaten?).to eq 20



  end

end
