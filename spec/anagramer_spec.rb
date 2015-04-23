require('rspec')
require('anagramer')

describe('String#anagramer') do

  it('verify both string of same length') do
    expect(("xxx").anagramer("xx")).to(eq(false))
  end

  it('makes sure the string to compare does not occur more than the number of times it exists in the original string') do
    expect(("xyy").anagramer("yxx")).to(eq(false))
  end

  it('makes sure a valid string and anagram return true') do
    expect(("fox").anagramer("fxo")).to(eq(true))
  end
end
