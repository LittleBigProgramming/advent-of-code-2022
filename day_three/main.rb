def part_one(input)
   letters = ("a".."z").to_a + ("A".."Z").to_a
   priorities = letters.each_with_index.map { |letter, index| [letter, index + 1] }.to_h

   score = 0
   input.each do |rucksack|
      midpoint_intersection =rucksack.length / 2
      compartment_one = rucksack[0..midpoint_intersection]
      compartment_two = rucksack[midpoint_intersection..-1]

      duplicate_item = compartment_one.chars.find { |item| compartment_two.include?(item) }
      
      score += priorities[duplicate_item] unless duplicate_item.nil?
   end

   score
end

def part_two(input)
   letters = ("a".."z").to_a + ("A".."Z").to_a
   priorities = letters.each_with_index.map { |letter, index| [letter, index + 1] }.to_h

   score = 0
   input.each_slice(3) do |rucksack|
      badge = rucksack[0].split('').find do |badge|
         rucksack[1].include?(badge) && rucksack[2].include?(badge)
      end
      score += priorities[badge] unless badge.nil?
   end

   score
end
