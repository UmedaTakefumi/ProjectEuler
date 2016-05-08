#!/usr/bin/env python
# coding: utf-8

# Problem 1:
#   URL: http://projecteuler.net/problem=1
#   Subject: Multiples of 3 and 5
#     If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#     Find the sum of all the multiples of 3 or 5 below 1000.

# Problem 1:
#   URL: http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%201
#   Subject: 3と5の倍数
#     10未満の自然数のうち, 3 もしくは 5 の倍数になっているものは 3, 5, 6, 9 の4つがあり, これらの合計は 23 になる.
#     同じようにして, 1000 未満の 3 か 5 の倍数になっている数字の合計を求めよ.

sum = 0

for tmp in range(1,1000):
  if tmp % 3 == 0 or tmp % 5 ==0 :
    sum += tmp

print sum



