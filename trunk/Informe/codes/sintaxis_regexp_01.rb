#Ejemplo 1
/abc/  =~ 'zxyabcdef'     # Returns TRUE
/ABC/  =~ 'zxyabcdef'     # Returns FALSE
/ABC/i =~ 'zxyabcdef'     # Returns TRUE

#Ejemplo 2
/^From:/ =~ "From: jack"    # Returns TRUE
/^ To:/  =~ "To: jill"     # Returns FALSE

/end$/   =~ "to the end"    # Returns TRUE
/end$/   =~ "to an end!"    # Returns False

#Ejemplo 3
def chab(s) # contiene la cadena un hexadecimal (entre angulos "<>")
  (s =~ /<0[Xx][\dA-Fa-f]+>/) != nil
end