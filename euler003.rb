# coding: utf-8
#Problem 3 「最大の素因数」
require 'prime'

def euler003
    600851475143.prime_division.map {|p,n| [p]*n }.flatten.max
end