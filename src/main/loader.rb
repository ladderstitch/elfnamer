module Loader
	def Loader.load_first_pref
		file = File.open("res/firstpref.txt", "r")
		first_prefix = Struct.new("FirstPrefix", :prefixes, :meaning)
		elven = []
		pref = []
		meaning = ""
		ind = 0

		file.each_line do |line|
			pieces = line.split(" ")
			ind = 0
			pieces.each do |piece|
				if piece == ":"
					ind += 1
					break
				end
				elven.push(piece.gsub(/\W+/, "")) unless piece.gsub(/\W+/, "") == ""
				ind += 1
			end
	
			meaning = pieces.drop(ind).join(" ")
	
			pref.push(first_prefix.new(elven, meaning))
	
			elven = []
		end
	
		return pref
	end

	def Loader.load_first_suff
		file = File.open("res/firstsuff.txt", "r")
		first_suffix = Struct.new("FirstSuffix", :suffixes, :meaning)
		elven = []
		suff = []
		meaning = ""
		ind = 0

		file.each_line do |line|
			pieces = line.split(" ")
			ind = 0
			pieces.each do |piece|
				if piece == ":"
					ind += 1
					break
				end
				elven.push(piece.gsub(/\W+/, "")) unless piece.gsub(/\W+/, "") == ""
				ind += 1
			end
	
			meaning = pieces.drop(ind).join(" ")
	
			suff.push(first_suffix.new(elven, meaning))
	
			elven = []
		end
	
		return suff
	end
end
