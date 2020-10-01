def winner_for?(r:)
    if (r.compact.length == 3) && (r.uniq.length == 1)
        r.first
    else
        false
    end
end

def check_for_winner(rows)
    rows.each do |row|
        # if (row.compact.length == 3) && (row.uniq.length == 1)
        #     return row.first
        # end
        winner = winner_for? r: row
        return winner if winner
    end

    rows.transpose.each do |row|
        # if (row.compact.length == 3) && (row.uniq.length == 1)
        #     return row.first
        # end
        winner = winner_for? r: row
        return result if winner
    end

    # Check the top-left to bottom-right diagonal
    row = [
        rows[0][0], rows[1][1], rows[2][2]
    ]

    if (row.compact.length == 3) && (row.uniq.length == 1)
        return row.first
    end

    # Check the top-right to bottom-left diagonal
    row = [
        rows[0][2], rows[1][1], rows[2][0]
    ]

    if (row.compact.length == 3) && (row.uniq.length == 1)
        return row.first
    end

    nil
end