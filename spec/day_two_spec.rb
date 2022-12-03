require "./day_two/main.rb"

describe "What would your total score be if everything goes exactly according to your strategy guide?" do
      input = IO.read("day_two/input.txt").lines(chomp: true)
      score_matrix = {
            A: {
                  "X" => 4,
                  "Y" => 8,
                  "Z" => 3
            },
            "B": {
                  "X" => 1,
                  "Y" => 5,
                  "Z" => 9
            },
            "C": {
                  "X" => 7,
                  "Y" => 2,
                  "Z" => 6
            }
    }

      subject { calculate_scores_from_moves(input, score_matrix) }
      it { is_expected.to eq 11150 }
end

describe "Following the Elf's instructions for the second column,
          what would your total score be if everything goes exactly
          according to your strategy guide?" 
          do
      input = IO.read("day_two/input.txt").lines(chomp: true)
      score_matrix = {
            A: {
                  "X" => 3,
                  "Y" => 4,
                  "Z" => 8
            },
            "B": {
                  "X" => 1,
                  "Y" => 5,
                  "Z" => 9
            },
            "C": {
                  "X" => 2,
                  "Y" => 6,
                  "Z" => 7
            }
    }

      subject { calculate_scores_from_moves(input, score_matrix) }
      it { is_expected.to eq 8295}
end
