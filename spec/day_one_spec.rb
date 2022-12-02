require "./day_one/main.rb"

describe "Find the Elf carrying the most Calories. How many total Calories is that Elf carrying" do
      input = IO.read("day_one/input.txt")

      subject { part_one(input) }
      it { is_expected.to eq 75501 }
end

describe "Find the top three Elves carrying the most Calories. How many Calories are those Elves carrying in total?" do
      input = IO.read("day_one/input.txt")

      subject { part_two(input) }
      it { is_expected.to eq 215594 }
end
