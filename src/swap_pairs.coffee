exports.swapPairs = (array) ->
  res = for number,index in array by 2
    [first, second] = array[index..index+1]
    [second, first]
  [].concat res...
