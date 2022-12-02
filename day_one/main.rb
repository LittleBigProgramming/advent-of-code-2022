def part_one(input)
    elves_calories = parse_input_with_empty_lines_as_delimiters(input)
    highest_calorie_count = elves_calories.sort.reverse.first
end

def part_two(input)
    elves_calories = parse_input_with_empty_lines_as_delimiters(input)
    highest_calories_of_three_elves  = elves_calories.sort.reverse.first(3).sum
end

def parse_input_with_empty_lines_as_delimiters(input)
    input.split("\n\n").map { |line| line.split("\n").map(&:to_i).sum }
end
