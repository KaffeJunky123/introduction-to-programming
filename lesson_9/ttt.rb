PL_MARK = 'X'
CP_MARK = 'O'
WINNING_DIRECTIONS = [
                      [0,1,2], [3,4,5], [6,7,8], # horizontal
                      [0,3,6], [1,4,7], [2,5,8], # vertical
                      [0,4,8], [2,4,6]           # diagonal
                     ]

def cls
  system("clear") or system("cls")
end

def winning_state?(brd)
  
