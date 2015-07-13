puts "About Scoring"
dices = [1,5,5,1]
counts = Hash.new(0)
dices.each { |dice| counts[dice] += 1 }
score = 0
puts counts

counts.each do |key, value|
    #
    triplets = value / 3
    remainer = value % 3

   score += (100 * remainer) + (1000 * triplets) if key == 1 
   score += (50 * remainer) + (500 * triplets) if key == 5 

   puts "triplets = " + triplets.to_s
   puts "remainer =" + remainer.to_s
end 
