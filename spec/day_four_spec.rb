require "./day_four/main.rb"

describe "Find the item type that appears in both compartments of each rucksack. What is the sum of the priorities of those item types?" do
      input = IO.read("day_four/input.txt").lines(chomp: true)
      subject { part_one(input) }
      it { is_expected.to eq 441 }
end

describe "Find the item type that corresponds to the badges of each three-Elf group. What is the sum of the priorities of those item types?" do
      input = IO.read("day_four/input.txt").lines(chomp: true)
      subject { part_two(input) }
      it { is_expected.to eq 861 }
end
