String::c = (pos) ->
  @charAt pos

exports.kmp = (str, find) ->
  spos = 0
  fpos = 0
  while spos < str.length
    if str.c(spos) isnt find.c(fpos)
      spos++
    else
      sspos = spos + 1
      while spos + 1 < str.length and fpos + 1 < find.length
        if str.c(++spos) isnt find.c(++fpos)
          spos = sspos
          fpos = 0
          break
        if fpos is find.length - 1
          break
      if fpos is find.length - 1
        spos -= fpos
        break
  spos
