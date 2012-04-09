#!/usr/bin/env ruby

file = File.open("firstsuff.txt", "r")

file.each_line do |line|
	content = line.split(" ").drop(1).join(" ")
	puts content
end
