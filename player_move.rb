def player_move!(player, grid)
    begin
        print "Player #{player} move (row,column):"
        move = gets.chomp.split(',')
        row, col = move.map { |element| element.to_i }
    end until grid[row][col].nil?

    grid[row][col] = player
end