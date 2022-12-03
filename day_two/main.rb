def calculate_scores_from_moves(moves, score_matrix)
    total_score_part_1 = 0

    moves.map { |line| line.split(" ") }.each do |line|
        opponent_move = line[0].to_sym
        my_move = line[1]

        total_score_part_1 += score_matrix[opponent_move][my_move]
    end
    
    total_score_part_1
end
