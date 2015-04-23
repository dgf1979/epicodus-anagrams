require('rspec')
require('anagramer')

describe('String#anagramer') do

  it('verify both string of same length') do
    expect(("xxx").compare("xx")).to(eq(false))
  end

  it('makes sure the string to compare does not occur more than the number of times it exists in the original string') do
    expect(("xyy").compare("yxx")).to(eq(false))
  end

  it('makes sure a valid string and anagram return true') do
    expect(("fox").compare("fxo")).to(eq(true))
  end

  it('makes sure input is case-insensitive') do
    expect(("FOX5").compare("fxo5")).to(eq(true))
  end

end
