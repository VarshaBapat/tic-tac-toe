def print_board(rows)
    rows = rows.map do |row|
        row = row.map { |element| element.nil? ? ' ' : element }
        row.join('|')
    end

    puts
    puts rows.join("\n" + ('-' * 5) + "\n")
    puts
end
