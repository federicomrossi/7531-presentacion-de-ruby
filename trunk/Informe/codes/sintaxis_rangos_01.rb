#rangos
edadNinos = 4..12
estrellasHotel = 1...6
edadNinos.include?(12) #true
estrellasHotel.include?(6) #false

(5..10).inject {|sum, n| sum + n } # 45