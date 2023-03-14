RSpec.describe 'map' do

  it 'capitalizes' do
    names = ["alice", "bob", "charlie"]
    capitalized_names = names.map do |name|
      name.capitalize
    end
    expect(capitalized_names).to eq(["Alice", "Bob", "Charlie"])
  end

  it 'doubles' do
    numbers = [1, 2, 3, 4, 5]
    doubles = numbers.map do |number|
    number * 2
    end
    expect(doubles).to eq([2, 4, 6, 8, 10])
  end

  it 'squares' do
    numbers = [1, 2, 3, 4, 5]
    squares = numbers.map do |number|
      number * number
    end
    expect(squares).to eq([1, 4, 9, 16, 25])
  end

  xit 'lengths' do
    names = ["alice", "bob", "charlie", "david", "eve"]
    # number.length
    expect(lengths).to eq([5, 3, 7, 5, 3])
  end

  xit 'normalize zip codes' do
    numbers = [234, 10, 9119, 38881]
    # numbers.normalize(0,0,0,0,0)
    expect(zip_codes).to eq(["00234", "00010", "09119", "38881"])
  end

  xit 'backwards' do
    names = ["alice", "bob", "charlie", "david", "eve"]
    # Your code goes here
    expect(backwards).to eq(["ecila", "bob", "eilrahc", "divad", "eve"])
  end

  xit 'words with no vowels' do
    words = ["green", "sheep", "travel", "least", "boat"]
    # Your code goes here
    expect(without_vowels).to eq(["grn", "shp", "trvl", "lst", "bt"])
  end

  xit 'trims last letter' do
    animals = ["dog", "cat", "mouse", "frog", "platypus"]
    # Your code goes here
    expect(trimmed).to eq(["do", "ca", "mous", "fro", "platypu"])
  end
end

