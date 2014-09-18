chai = require 'chai'
{kmp} = require '../src/kmp'

chai.should()

describe 'kmp', ->
  it 'a, a should return 0', ->
    kmp('a', 'a').should.equal 0
  it 'ab, b should return 1', ->
    kmp('ab', 'b').should.equal 1
  it 'abc, c should return 2', ->
    kmp('abc', 'c').should.equal 2
  it 'aab, ab should return 1', ->
    kmp('aab', 'ab').should.equal 1
  it 'ababc, abc should return 2', ->
    kmp('ababc', 'abc').should.equal 2
  it 'abcabcabcdeabcf, abcf should return 11', ->
    kmp('abcabcabcdeabcf', 'abcf').should.equal 11
