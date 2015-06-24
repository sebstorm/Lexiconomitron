require_relative("../lib/lexicon.rb")



RSpec.describe Lexicon do 

before(:each) do
	@lexi = Lexicon.new
end

it("removes every letter t from the input") do
expect(@lexi.eat_t("great scott")).to eq("grea sco")	
end
it("reverses letters in words in array, returns first and last word and eats t's") do
expect(@lexi.shazam(["This", "is", "not", "your", "mothers", "string"])).to eq(["sih", "gnirs"])	
end
it("removes all words greater than three characters and eats t's") do
expect(@lexi.oompa(["can", "you", "believe", "this", "cat", "is", "black"])).to eq(["can", "you", "ca", "is"])	
end
	
end