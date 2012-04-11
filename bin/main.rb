#!/usr/bin/env ruby
require_relative '../src/main/elfname'

die = rand(8)

if die < 4
	ElfName.first_type_one
elsif die < 6
	ElfName.first_type_two
else
	ElfName.first_type_three
end
