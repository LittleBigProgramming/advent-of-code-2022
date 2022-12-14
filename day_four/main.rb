def part_one(input)
   input.each.count do |section_assignment|
      puts section_assignment
      first_section, second_section = section_assignment.split(',')
      
      first_elf_range = first_section.split('-').map(&:to_i)
      first_elf_range = (first_elf_range.first.to_i..first_elf_range.last.to_i)

      second_elf_range = second_section.split('-').map(&:to_i)
      second_elf_range = (second_elf_range.first.to_i..second_elf_range.last.to_i)
      
      first_elf_range.cover?(second_elf_range) || second_elf_range.cover?(first_elf_range)
   end
end

def part_two(input)
   input.each.count do |section_assignment|
      puts section_assignment
      first_section, second_section = section_assignment.split(',')
      
      first_elf_range = first_section.split('-').map(&:to_i)
      first_elf_range = (first_elf_range.first.to_i..first_elf_range.last.to_i)

      second_elf_range = second_section.split('-').map(&:to_i)
      second_elf_range = (second_elf_range.first.to_i..second_elf_range.last.to_i)
      
      (first_elf_range.to_a & second_elf_range.to_a).any?
   end
end
