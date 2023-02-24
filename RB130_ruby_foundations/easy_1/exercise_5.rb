=begin
problem
- input is a list of encrypted names
- output prints each of the names decripted

- encryption is Rot13
- a letter is replaced by the letter 13 letters later in alphabet
- after 'z', it starts over at 'a'
- to decode, go back 13 letters
- uppercase and lowercase stay the same case
- names contain spaces and dashes

ex:
a b c d e f g h i j k l m n o p q r s t u v w x y z
n o p q r s t u v w x y z a b c d e f g h i j k l m

Nqn Ybirynpr
Aca Lovelade

ds:
string of names

array of string names

reference arrays for decoding

array of decoded names

algo:
- split the input into an array of encoded names
- create an array of encoded and decoded chars
- iterate through each encoded name
  - create a temp string
  - iterate through each char in the current name
    - if it's not a letter
      - add the char to the temp string
    - otherwise:
      - downcase the char and save it
      - get the index number for the char from the encoded array
      - use the index number to get the char from the decoded array
      - if the current char is uppercase, upcase the decoded char
      - add the decoded char to the temp string
  - add the temp string to an array of decoded names

- output the array of decoded names

=end
# require 'pry'

names = "Nqn Ybirynpr
Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unvog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu"

DECODED = ('a'..'z').to_a
ENCODED = ('n'..'z').to_a + ('a'..'m').to_a

def decode_name(name)
  name.chars.map do |encoded_char|
    if ENCODED.include?(encoded_char.downcase)
      decoded_char = DECODED[ENCODED.index(encoded_char.downcase)]
      decoded_char = decoded_char.upcase if encoded_char.upcase == encoded_char
      decoded_char
    else
      encoded_char
    end
  end.join
end

def decode_names(encoded_names)
  decoded_names = encoded_names.split("\n").map do |encoded_name|
    decode_name(encoded_name)
  end

  puts decoded_names
end

# puts '==== Single Decoded Name ===='
# p decode_name('Tenpr Ubccre')
# puts '==== All Decoded Names ===='
# decode_names(names)
# puts '==== Single Decoded Name ===='
# p decode_name('Tenpr Ubccre')

def unencrypt(name)
  name.chars.map do |char|
    next char if !('a'..'z').include? char.downcase
    13.times { char.next! }
    char[-1]
  end.join
end

p unencrypt('Tenpr Ubccre')