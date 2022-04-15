function spiralCopy(inputMatrix) {
    let arr = []
    let matrix = inputMatrix
    if(matrix.length == 1){
      return [].concat(...matrix)
    }
    while(matrix.length){
      arr.push(matrix.shift(), matrix.map(ar => ar.pop()), (matrix.pop()).reverse(), matrix.map(ar => ar.shift()).reverse())
    }
   return [].concat(...arr)
  }
  
  arr = spiralCopy([ [1,    2,   3,  4,    5],
                           [6,    7,   8,  9,   10],
                           [11,  12,  13,  14,  15],
                           [16,  17,  18,  19,  20] ])
  
  console.log(arr)