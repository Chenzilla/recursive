def fibs n
  first = 1
  second = 1
  for counter in 0..n
    puts first
    puts second
    first += second
    second += first
  end
end

def fibs_rec n
  if n < 2
    n
  else 
    fibs_rec(n-1) + fibs_rec(n-2)
  end
end

