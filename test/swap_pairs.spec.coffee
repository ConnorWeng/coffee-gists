chai = require 'chai'
{swapPairs} = require '../src/swap_pairs'

chai.should()

describe 'swap_pairs', ->
  it 'should swap pairs in a array', ->
    swapPairs([1, 2, 1, 2, 1, 3]).should.eql [2, 1, 2, 1, 3, 1]
