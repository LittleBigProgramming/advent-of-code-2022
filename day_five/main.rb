def part_one(input)
   stacks_of_crates = {
      1 => %w[J H P M S F N V],
      2 => %w[S R L M J D Q],
      3 => %w[N Q D H C S W B],
      4 => %w[R S C L],
      5 => %w[M V T P F B],
      6 => %w[T R Q N C],
      7 => %w[G V R],
      8 => %w[C Z S P D L R],
      9 => %w[D S J V G P B F]
   }

   input.each do |line|
      instructions = line.match(/move (?<move_quantity>\d+) from (?<move_from>\d+) to (?<move_to>\d+)/)
      quantity = instructions[:move_quantity].to_i
      from = instructions[:move_from].to_i
      to = instructions[:move_to].to_i

      quantity.times do
         crate = stacks_of_crates[from].pop
         stacks_of_crates[to] << crate
       end
   end

   stacks_of_crates.values.map(&:last).join
end

def part_two(input)
   stacks_of_crates = {
      1 => %w[J H P M S F N V],
      2 => %w[S R L M J D Q],
      3 => %w[N Q D H C S W B],
      4 => %w[R S C L],
      5 => %w[M V T P F B],
      6 => %w[T R Q N C],
      7 => %w[G V R],
      8 => %w[C Z S P D L R],
      9 => %w[D S J V G P B F]
   }

   input.each do |line|
      instructions = line.match(/move (?<move_quantity>\d+) from (?<move_from>\d+) to (?<move_to>\d+)/)
      quantity = instructions[:move_quantity].to_i
      from = instructions[:move_from].to_i
      to = instructions[:move_to].to_i

      stacks_of_crates[to] += stacks_of_crates[from].pop(quantity)
   end

   stacks_of_crates.values.map(&:last).join
end
