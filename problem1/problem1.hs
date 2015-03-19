-- divide 1000 by 5 & 3 use this numbers as upperbounds make array of 1- upperbound sum array

divisors :: Int -> [Int]
divisors x = [z * x | z <- [1..(div 999 x)]]


x_no_y :: [Int] -> [Int] -> [Int]
x_no_y x y = [z | z <- x, not (elem z y) ]

result :: [Int] -> [Int] -> Int
result x y = sum ((x_no_y x y)++y)
