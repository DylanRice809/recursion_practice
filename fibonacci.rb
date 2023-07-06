def fibs (int)
  sequence = [0, 1]
  for i in 1..int-2
    x = sequence[i] + sequence[i-1]
    sequence << x
  end
  p sequence
end

def fibs_rec (int, sequence, i=1)
  if (i == int-1) then return sequence end
  sequence << sequence[i] + sequence[i-1]
  fibs_rec(int, sequence, i+=1)
end

p fibs_rec(8, [0,1])