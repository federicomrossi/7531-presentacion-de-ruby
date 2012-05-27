#Uso como secuencias
edadNinos = 4..12
estrellasHotel = 1...6
edadNinos.include?(12) #true
estrellasHotel.include?(6) #false
(5..10).inject {|sum, n| sum + n } # 45

#Uso como condicionales
while line = gets
   puts line if line =~ /start/..line =~/end/
end

#Uso como intervalos
(1..10) === 5      # Returns TRUE
(1..10) === 15     # Returns FALSE

('a'..'j') === 'e' # Returns TRUE
('a'..'j') === 'm' # Returns FALSE

kind = case year
     when 0..9 then "tens"
     when 10..99 then "hundreds"
     when 100..999 then "thousands"
     else               "Out of Range"
end

