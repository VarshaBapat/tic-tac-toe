require_relative 'print_board'
require_relative 'player_move'
require_relative 'check_for_winner'

# loop
#     input a turn on the board
#         (decide on a convention to identify uniquely each cell)
#         if cell is empty
#             put move into the board
#         otherwise
#             try again
#     output the board to the terminal
#     if the game is finished then
#         print the winner if there is one
#         start a new game or exit
# next player

board = [
    [nil, nil, nil],
    [nil, nil, nil],
    [nil, nil, nil]
]

winner = nil
player = nil

def is_draw?(grid)
    grid.flatten.compact.length == 9
end

until winner
    # player = (player == 'o') || player.nil? ? 'x' : 'o'
    player = (player == 'x') ? 'o' : 'x'
    print_board(board)
    player_move!(player, board)
    winner = check_for_winner(board)
    draw = is_draw?(board) unless winner
    break if winner || draw # or use: `next unless winner`
end 

puts
puts "The winner is #{winner}" if winner
puts "Draw! No winner!" if draw
print_board(board)