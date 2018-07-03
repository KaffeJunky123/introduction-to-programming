require 'matrix'

class Board
  def initialize(pc_turn)
    @board_matrix = Matrix.rows([[-1,1,0], [1,-1,0], [0,1,-1]])
    @identity = Matrix.identity(3)
    @permutation_matrix = Matrix.rows(@identity.to_a.reverse)
    @row_vec = Matrix.row_vector([1,1,1])
    @markers = { 1 => "X", 0 => " ", -1 => "O" }
    @pc_turn = pc_turn
  end
  def move(x,y)
    return false if @board_matrix[x,y] != 0
    tmp = @board_matrix.to_a
    tmp[x][y] = pc_turn ? -1 : 1
    @board_matrix = Matrix[tmp]
    @pc_turn = !@pc_turn
    true
  end
  def win
    # fancy matrix stuff 1 player wins, 0 draw, -1 pc wins
    [@identity.column_vectors.map{ |vec| (@row_vec * @board_matrix * vec)[0]}.max_by{ |n| n.abs },
     @identity.column_vectors.map{ |vec| (@row_vec * @board_matrix.t * vec)[0]}.max_by{ |n| n.abs },
     @board_matrix.tr, (@permutation_matrix * @board_matrix).tr].max_by{ |n| n.abs} / 3
  end
  def to_str()
    "+---+---+---+\n"+
    @board_matrix.to_a.map do |row|
      "| %s | %s | %s |\n+---+---+---+\n" % row.map{ |val|  @markers[val]}
    end.join
  end
end

def cls
  system("clear") or system("cls")
end

puts Board.new(true).win
