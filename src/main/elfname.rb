require_relative 'loader'

module ElfName
	def ElfName.first_type_one
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
	
	def ElfName.first_type_two
		first_pref = Loader.load_first_pref
		first_suff = Loader.load_first_suff
		pref = first_pref[rand(first_pref.length)]
		suff_one = first_suff[rand(first_suff.length)]
		suff_two = first_suff[rand(first_suff.length)]

		names = []

		pref.prefixes.each do |pref_str|
			suff_one.suffixes.each do |suff_one_str|
				suff_two.suffixes.each do |suff_two_str|
					names += [pref_str + suff_one_str + suff_two_str]
				end
			end
		end
		
		puts names.join(", ")
		puts "#{pref.prefixes.join(", ")} means #{pref.meaning}"
		puts "-#{suff_one.suffixes.join(", -")} means #{suff_one.meaning}"
		puts "-#{suff_two.suffixes.join(", -")} means #{suff_two.meaning}"
	end
	
	def ElfName.first_type_three
		first_pref = Loader.load_first_pref
		first_suff = Loader.load_first_suff
		suff_one = first_suff[rand(first_suff.length)]
		pref = first_pref[rand(first_pref.length)]
		suff_two = first_suff[rand(first_suff.length)]
		suff_three = first_suff[rand(first_suff.length)]

		names = []

		suff_one.suffixes.each do |suff_one_str|
			pref.prefixes.each do |pref_str|
				suff_two.suffixes.each do |suff_two_str|
					suff_three.suffixes.each do |suff_three_str|
						names += [suff_one_str + "'" + pref_str + suff_two_str + suff_three_str]
					end
				end
			end
		end

		puts names.join(", ")
		puts "-#{suff_one.suffixes.join(", -")} means #{suff_one.meaning}"
		puts "#{pref.prefixes.join(", ")} means #{pref.meaning}"
		puts "-#{suff_two.suffixes.join(", -")} means #{suff_two.meaning}"
		puts "-#{suff_three.suffixes.join(", -")} means #{suff_three.meaning}"
	end
end
