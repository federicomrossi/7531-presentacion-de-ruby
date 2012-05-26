#Descarga de sitios web
require 'net/http'
pages = ["www.rubycentral.com", "www.awl.com", "www.pragmaticprogrammer.com"]      
threads = []

for page in pages
  threads << Thread.new(page) { |myPage|

    h = Net::HTTP.new(myPage, 80)
    puts "Fetching: #{myPage}"
    resp, data = h.get('/', nil )
    puts "Got #{myPage}:  #{resp.message}"
  }
end
threads.each { |aThread|  aThread.join }

#Fetching: www.rubycentral.com
#Fetching: www.awl.com
#Fetching: www.pragmaticprogrammer.com
#Got www.rubycentral.com:  OK
#Got www.pragmaticprogrammer.com:  OK
#Got www.awl.com:  OK