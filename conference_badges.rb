def badge_maker(name = Arel)
  return "Hello, my name is #{name}."
end

# def batch_badge_creator(speakers)
#  speaker_badges = []
#  speakers.each do |name|
#     speaker_badges.push (badge_maker(name))
#  end
#  return speaker_badges
# end

def batch_badge_creator(speakers)
  speakers.map do |name|
    badge_maker(name)
  end
end 

def assign_rooms(speakers)
  speakers.each_with_index.map do |name, index|
    "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  end
end

def printer(speakers)
  batch_badge_creator(speakers).each do |name|
    puts name
  end
  assign_rooms(speakers).each do |name|
    puts name
  end
end