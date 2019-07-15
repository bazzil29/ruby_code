# obj = Object.new

# def obj.talk 
#     puts "I am an object!"
#     puts "Do you object??"
# end

# def obj.c2f(c)
#     return c*9.0/5 +32  
# end


# obj.talk
# puts obj.c2f(100)



ticket  = Object.new 

def ticket.date
    "1903-1-1" 
end

def ticket.venue
    "Town Hall"
end

def ticket.event
    "Author reading"
end

def ticket.performer 
    "Mark Twain"
end

def ticket.seat
    "Second Balcony , row J , seat 32"   
end

def ticket.price
    5.50
end

print "This ticket is for: "
print ticket.event + ", at "
print ticket.venue + ", on "
puts ticket.date + "."
print "The performer is "
puts ticket.performer + "."
print "The seat is "
print ticket.seat + ", "
print "and it costs $"
puts "%.2f." % ticket.price


def ticket.availability_status
    "sold"
end

def ticket.available?
    false
end

if ticket.available
    puts "You're in luck!"
else
    put "Sorry--that seat has been sold!"
end