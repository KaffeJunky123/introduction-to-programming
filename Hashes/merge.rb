hash1 = { abba: "Dancing Queen", Queen: "Bohemian Rapsody" }
hash2 = { Slayer: "Raining Blood", Metallica: "Harvester of Sorrows", Tool: "Prison_sex"}
puts "result of merge: #{hash1.merge(hash2)}"
puts "value of hash1: #{hash1}"
hash1.merge!(hash2)
puts "hash1 after merge!: #{hash1}"

