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

DECODED = ('A'..'Z').to_a + ('a'..'z').to_a
ENCODED = ('N'..'Z').to_a + ('A'..'M').to_a + ('n'..'z').to_a + ('a'..'m').to_a

def decode_name(name)
  name.chars.map do |encoded_char|
    if ENCODED.include?(encoded_char.downcase)
      DECODED[ENCODED.index(encoded_char)]
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

decode_names(names)