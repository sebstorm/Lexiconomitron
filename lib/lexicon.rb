class Lexicon
	def eat_t(phrase)
		return phrase.gsub(/t/, "").gsub(/T/, "")
	end

	def shazam(array)
		array = array.map do |item|
			eat_t(item.reverse!)
		end
		results_array = []
		return results_array.push(array[0]).push(array[array.size-1])
	end

	def oompa(array)

		array1 = []
		array.each do |item|

			if item.size <= 3

			array1 << self.eat_t(item)
			end
		end
		return array1
	end
end