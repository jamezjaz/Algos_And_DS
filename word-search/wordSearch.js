const wordSearch = (board, word) => {
  // iterate through the board array
  // if word[i] exist in board, return true otherwise return false:
     // if the row < 0 || if the column < 0|| if the row >= board.length || if the column >= board[0].length, return false
     // if any board element == current word element;
        // if the word element == the last element, return true else check the grid recursively
  
  for (let i = 0; i < board.length; i++) {
    // console.log(board[i]);
    for (let j = 0; j < board[i].length; j++) {
      // console.log(board[i][j]);
      if (dfsWord(board, word, i, j, 0)) {
        return true;
      }
    }
  }
  return false;
};

const dfsWord = (board, word, i, j, w) => {
  let boardLen = board.length;
  let boardRow = board[0].length;
  if (i < 0 || j < 0 || i >= boardLen || j >= boardRow) {
    return false;
  }

  if(board[i][j] == word[w]) {
    let boardElem = board[i][j];
    board[i][j] = '#';
    if (w == word.length - 1) {
      return true;
    } else if (dfsWord(board, word, i-1, j, w+1)
              || dfsWord(board, word, i+1, j, w+1)
              || dfsWord(board, word, i, j-1, w+1)
              || dfsWord(board, word, i, j+1, w+1)) {
                return true
              }
              board[i][j] == boardElem;
  }
    return false;
};

const board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]];
const word = "ABCCED";

console.log(wordSearch(board, word));