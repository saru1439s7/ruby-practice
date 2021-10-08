# def convert_length(length,unit_from: :m,unit_to: :m)
#   units = { m: 1.0, ft: 3.28, in: 39.37}
#   (length / units[from]*units[to].round(2))
# end

#1m換算のft, in
UNITS = { m: 1.0, ft: 3.28, in: 39.37 }
# round(2)で四捨五入する

def convert_length(length, from: :m, to: :m)
  (length / UNITS[from] * UNITS[to]).round(2)
end