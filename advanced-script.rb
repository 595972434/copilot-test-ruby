## call www.google.com
## print "OK" if response is 200
## esle print "Bad"
require 'net/http'
require 'uri'
def google
  uri = URI.parse('http://www.google.com')
  response = Net::HTTP.get_response(uri)
  if response.code == "200"
    puts "OK"
  else
    puts "Bad"
  end
end


## call google 10 times and calculate the time it takes to run
## print the average time
def google_10
    times = []
    10.times do
        start = Time.now
        google
        end_time = Time.now
        times << end_time - start
    end
    average = times.inject(:+) / times.size
    puts average
end
