require_relative 'loader'

module ElfName
	def ElfName.rand_name
		first_pref = Loader.load_first_pref
		first_suff = Loader.load_first_suff
		pref = first_pref[rand(first_pref.length)]
		suff = first_suff[rand(first_suff.length)]

		names = []

		pref.prefixes.each do |pref_str|
			suff.suffixes.each do |suff_str|
				names += [pref_str + suff_str]
			end
		end
		
		puts names.join(", ")
		puts "#{pref.prefixes.join(", ")} means #{pref.meaning}"
		puts "-#{suff.suffixes.join(", -")} means #{suff.meaning}"
	end
end
