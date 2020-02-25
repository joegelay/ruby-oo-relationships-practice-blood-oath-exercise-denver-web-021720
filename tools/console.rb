require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

idle_hands = Cult.new "Idle Hands", "Lima, Peru", 2016, "Lemme See Your Hands"
devils_workshop = Cult.new "Devil's Workshop", "Huaraz, Peru", 2017, "Welcome To The Devil's Workshop"
boland_street = Cult.new "Boland Street", "Brick, NJ", 1993, "Welcome Home"

chris = Follower.new "Chris Chang", 27, "Idle Hands, Devil's Workshop."
bree = Follower.new "Bree Gonzalez", 25, "That Was The Biggest Splash I've Ever Heard Outside Seaworld."
joe = Follower.new "Joe Gelay", 26, "If you can talk you can sing, if you can walk you can dance."
steve = Follower.new "Steve", 26, "If you can talk you can sing, if you can walk you can dance."
shaun = Follower.new "Shaun", 36, "If you can talk you can sing, if you can walk you can dance."
matt = Follower.new "Matt", 25, "If you can talk you can sing, if you can walk you can dance."
brian = Follower.new "Brian", 11, "If you can talk you can sing, if you can walk you can dance."
maria = Follower.new "Maria", 2, "If you can talk you can sing, if you can walk you can dance."
megan = Follower.new "Megan", 90, "If you can talk you can sing, if you can walk you can dance."
dana = Follower.new "Dana", 21, "If you can talk you can sing, if you can walk you can dance."
sara = Follower.new "Sara", 66, "If you can talk you can sing, if you can walk you can dance."
bobby = Follower.new "Bobby", 9, "If you can talk you can sing, if you can walk you can dance."

oath1 = BloodOath.new chris, idle_hands 
oath2 = BloodOath.new bree, idle_hands 
oath3 = BloodOath.new joe, devils_workshop
oath4 = BloodOath.new bobby, idle_hands
oath5 = BloodOath.new shaun, idle_hands
oath6 = BloodOath.new shaun, devils_workshop
oath7 = BloodOath.new megan, idle_hands
oath8 = BloodOath.new dana, idle_hands
oath9 = BloodOath.new sara, idle_hands
oath10 = BloodOath.new brian, idle_hands
oath11 = BloodOath.new brian, boland_street
oath12 = BloodOath.new shaun, boland_street







binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
