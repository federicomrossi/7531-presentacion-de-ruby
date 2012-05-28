begin
  file = open("/tmp/algun_fichero","w")
  # ... Escribimos en el archivo ...
  rescue
  # ... gestionamos las excepciones ...
  ensure
  file.close # ... Y esto se ejecuta siempre.
end