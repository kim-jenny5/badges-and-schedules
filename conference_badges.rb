# Write your code here.
def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    attendees.collect do |speaker|
        badge_maker(speaker)
    end
end

def assign_rooms(attendees)
    attendees.collect.with_index do |speaker, index|
        index += 1
        "Hello, #{speaker}! You'll be assigned to room #{index}!"
    end
end

def printer(attendees)
    batch_badge_creator(attendees).each do |badge|
        puts badge
    end
    
    assign_rooms(attendees).each do |room|
        puts room
    end
end