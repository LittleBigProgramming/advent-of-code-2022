require "./day_five/main.rb"

describe "After the rearrangement procedure completes, what crate ends up on top of each stack?" do
      input = IO.read("day_five/input.txt").lines(chomp: true)
      subject { part_one(input) }
      it { is_expected.to eq "SBPQRSCDF" }
end

describe "Before the rearrangement process finishes, update your simulation so that the Elves know where they should stand to be ready to unload the final supplies. After the rearrangement procedure completes, what crate ends up on top of each stack?" do
      input = IO.read("day_five/input.txt").lines(chomp: true)
      subject { part_two(input) }
      it { is_expected.to eq "RGLVRCQSB" }
end
