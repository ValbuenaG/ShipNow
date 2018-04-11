def frogJump(x,y,d)
  acum = 0
  until x >=y do
    x += d 
    acum +=1
  end
  acum
end

puts frogJump(10, 85, 30)