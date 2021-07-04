// Write an algorithm such that if an element in an NxN matrix is 0, its entire row and column are set to 0
// find the element and mark it
// find the row and col numbers
// make zero 0<row=i<n
// make zero 0<col=i<n

const zeroMatrix = (matrix, n) => {
  // mark the positions
  for (let row=0; row<n; row++) {
    for (let col=0; col<n; col++) {
      if (matrix[row][col] === 0) {
        matrix[row][col] = true;
      }
    }
  }
  // find the locations and zero them
  for (let row=0; row<n; row++) {
    for (let col=0; col<n; col++) {
      if (matrix[row][col] === true) {
        // zero row
        for (let i=0; i<n; i++) {
          matrix[row][i] = 0;
        }
        // zero col
        for (let i=0; i<n; i++) {
          matrix[i][col] = 0;
        }
      }
    }
  }
  return matrix;
};

const matrix = [[4, 1, 3],[2, -4, 0],[5, 9, 2]];
const matrix2 = [[5, 2, 0],[9, 0, 1],[2, 9, 3]];

console.log(zeroMatrix(matrix, 3));
console.log(zeroMatrix(matrix2, 3));

// => [ [ 4, 1, 0 ], [ 0, 0, 0 ], [ 5, 9, 0 ] ]
// => [ [ 0, 0, 0 ], [ 0, 0, 0 ], [ 2, 0, 0 ] ]