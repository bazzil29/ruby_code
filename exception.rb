# begin
#     file = open("no_file")
#     if file
#         puts "Open successfully"
#     end
# rescue
#     file = STDIN
# end 
# print file  ,"==",STDIN ,"\n"


# a = 10
# b ="42"
# begin
#     a + b 
#     rescue
#         puts "Could not add variable a (#{a.class}) and b (#{b.class})"
#     else 
#         puts "a + b is #{a+b}"
# end


# values = [42, 'a', 'r', 9, 5, 10022, 8.7, "sharon", "Libya", "Mars", "12", 98, rand + rand, {:dog=>'cat'}, 100, nil,
# 200.0000, Object, 680, 3.14, "Steve", 78, "Argo"].shuffle

# while values.length > 0
#     a = values.pop
#     b = values.pop
#     begin 
#         a + b 
#     rescue
#         puts "Could not add variable a (#{a.class}) and b (#{b.class})"
#   else
#         puts " a + b is #{a+b}"
#     end
# end



# require "open-uri"
# require "timeout"

# remote_base_url = "https://en.wikipedia.org/wiki"

# start_year , end_year = 1900, 2000

# (start_year..end_year).each do |year|
#     begin
#         rpage = open("#{remote_base_url}/#{year}")
#     rescue StandardError=>e
#         puts "Error #{e}" 
#     else
#         rdata = rpage.read 
#     ensure 
#         puts "sleeping"
#         sleep 5
#     end

#     if rdata
#         File.open("copy-of-#{year}.html","w"){|f|f.write(rdata)}
#     end
# end



# for  i in "A".."C"
#     retries = 2
#     begin 
#         puts "Executing command #{i}"
#         raise  "An Exception:#{i}"
#     rescue Exception=>e
#         puts "\tCaught: #{e}"
#         if retries >0 
#             puts "Trying #{retries} more times!"
#             retries -=1
#             sleep 2
#             retry
#         end
#     end
# end



require "open-uri"
require "timeout"

remote_base_url = "https://en.wikipedia.org/wiki"

retries = 2 

[1900,1999,'xj1490',2000].each do |year|
    begin
        url = "#{remote_base_url}/#{year}"
        rpage = open(url)
        puts "Getting page #{url}" 
    rescue StandardError=>e
        puts "Error #{e}"
        if retries > 0
            puts "Retrying more #{retries} times"
            retries -= 1
            retry
        else
            puts "Can't get this #{year} page , moving on!"
        end
    else
        puts "Got page for #{year}"
    ensure 
        puts "Ensure branch ,sleeping"
        sleep 1
    end
end

