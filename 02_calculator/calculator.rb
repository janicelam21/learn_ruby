#write your code here
def add(a,b)
    a+b
end

def subtract(a,b)
    a-b
end

def sum(numbers)
    numbers.reduce(0,:+)
end

def multiply(numbers)
    numbers.reduce(1,:*)
end

def factorial x
    if x <= 1
      1
    else
      x * factorial(x-1)
    end
  end