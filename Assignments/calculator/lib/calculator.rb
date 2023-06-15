# frozen_string_literal: true

class Calculator
  def add(*args)
    args.inject(:+)
  end

  def multiply(a,b)
    a * b
  end

  def divide(a,b)
    a / b
  end

  def subtract(a,b)
    a - b
  end
end
