current_num = 0
next_num = 1
fibo_nums = []
while current_num <= 100 do
  fibo_nums << current_num
  current_num, next_num = next_num, current_num + next_num
end
puts fibo_nums
