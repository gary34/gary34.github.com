## fibonacci 计算，a1 = a2 = 1 ;an=a(n-1)+a(n-2)
fib = Fiber.new do
  x, y = 0, 1
  loop do
    Fiber.yield y ## 返回 y 给 调用者
    x, y = y, x + y ## Fiber.yield 调用后阻塞，在resume之后执行
  end
end
20.times { puts fib.resume }
