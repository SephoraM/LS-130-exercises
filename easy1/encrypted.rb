PIONEERS = ["Nqn Ybirynpr", "Tenpr Ubccre", "Nqryr Tbyqfgvar", "Nyna Ghevat",
            "Puneyrf Onoontr", "Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv",
            "Wbua Ngnanfbss", "Ybvf Unvog", "Pynhqr Funaaba", "Fgrir Wbof",
            "Ovyy Tngrf", "Gvz Orearef-Yrr", "Fgrir Jbmavnx", "Xbaenq Mhfr",
            "Fve Nagbal Ubner", "Zneiva Zvafxl", "Lhxvuveb Zngfhzbgb",
            "Unllvz Fybavzfxv", "Tregehqr Oynapu"].freeze

def decrypt(letter)
  /[A-Ma-m]/ =~ letter ? (letter.ord + 13).chr : (letter.ord - 13).chr
end

def print_all_pioneers
  PIONEERS.each do |name|
    puts name.chars.map { |c| /[A-Za-z]/ =~ c ? decrypt(c) : c }.join
  end
end

print_all_pioneers
