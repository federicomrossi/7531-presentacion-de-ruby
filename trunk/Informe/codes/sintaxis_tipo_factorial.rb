# Programa que calcula el factorial de un numero
def factorial(n)
  if n == 0
    1
  else
    n * fact(n-1)
  end
end

puts factorial(ARGV[0].to_i)