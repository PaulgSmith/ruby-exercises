#Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

def caesar_cipher(string, shift)
  cipher = string.bytes.map do |letter|
    if letter.between?(65,90)
      letter += shift
      (letter % 90) + (shift + 64) if letter > 90
      letter
    elsif letter.between?(97,122)
      letter += shift
      (letter % 122) + (shift + 96) if letter > 122
      letter
    else
      letter
    end
  end
  cipher.pack('C*')
end

test = 'a'

p caesar_cipher(test, 3)

