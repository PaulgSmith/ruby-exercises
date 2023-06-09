# frozen_string_literal: true

def phone_number_check(phone_number)
  number = phone_number.to_s
  return true if number.size == 10
  return false if number.size < 10
  return true if number[0] == '1' && number.size == 11

  false
end

p phone_number_check(1)
p phone_number_check(7143154818)
p phone_number_check(17143154818)
p phone_number_check(27143154818)
p phone_number_check(7143154818)




