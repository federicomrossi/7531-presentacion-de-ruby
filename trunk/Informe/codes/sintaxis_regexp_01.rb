#Expresiones regulares
def chab(s) # contiene la cadena un hexadecimal (entre angulos "<>")
  (s =~ /<0[Xx][\dA-Fa-f]+>/) != nil
end