#-----------------------State is in show_intro----------------------------------
def show_intro
  puts "        !!!!Welcome to Cannon Hunt!!!!"
  sleep(1)
  puts "---------------------------------------------"
  puts "Created by Amanda Rissler at Wyncode Academy"
  puts "______________________________________________"
  puts "October 9-12, 2015"
  puts
  #----------------------------Intro sequence-------------------------------------
  sleep(1)
  puts "Ahoy! Welcome aboard the good ship Casique at the port of Marsh Harbour! "
  puts
  sleep(1) #makes the text read one line at a time, with 2 seconds of time in between.
  puts "Today we are searching for buried cannons somewhere in the sea of Great Abaco."
  puts
  sleep(1)
  puts "Ready to start?  Right now you have no map or clues. All you can do is pick a compass point."
  puts
  sleep(1)
  choose_compass # state change to choose_compass
end
#------------------------------------choose compass-----------------------------
def choose_compass
  puts "N -- [N]orth"
  puts "S -- [S]outh"
  puts "E -- [E]ast"
  puts "W -- [W]est"
  puts
  print "What direction will you sail? >"
  compass = gets.chomp.downcase
  case compass
  when "n"
    sleep(1)
    puts "--> Sail off to Great Guana Cay in search of the lost cannons!"
    sleep(2)
    puts "You meet Aulbury, the unofficial mayor of the island on the dock."
    sleep(2)
    puts "Aulbury says, 'How about we go for a drink at Nippers?'"
    great_guanna #change state to great_guana
  when "s"
    sleep(1)
    puts "--> Sail off to Little Harbour in search fo the lost cannons!"
    sleep (2)
    little_harbour #change state to little_harbor
  when "e"
    sleep(1)
    puts "--> Sail off to Elbow Cay in search of the lost cannons!"
    sleep (2)
    elbow_cay #change state to elbow_cay
  when "w"
    sleep(1)
    puts "--> Sail into the marsh-->"
    sleep(1)
    puts  "I hope the tides will be in your favor....."
    marsh #change state to marsh
  else
    choose_compass
  end
end
#_____________________________Player in great_guanna----------------------------
def great_guanna
  sleep(1)
  puts "Should you trust Albury?"
  puts "Y --[Y]es"
  puts "N -- [N]o"
  print "Will you drink a tripper with him? >"
  nippers = gets.chomp.downcase
  case nippers
  when "y"
    puts "Albury starts telling stories and one nipper turns into 8."
    sleep(2)
    drunk
  when "n"
    puts "Good Job!  That was a trap."
    sleep (1)
    puts "To find the cannons you must resist the devil rum!"
    choose_compass
  else
    great_guana
  end
end
#-------------------------Player sails south to little_harbour------------------
def little_harbour
  puts "You make it to the channel but the tide is low."
  puts
  sleep(1)
  puts "S -- [S]ail"
  puts "A -- [A]nchor"
  print "The tide is low do you want to sail into the harbor or anchore outside?>"
  sail_anchore = gets.chomp.downcase
  if sail_anchore == "s" then aground
  elsif sail_anchore == "a" then map
  else little_harbour
  end
end
#----------------------------Pete Johnston gives Map----------------------------
def map
  sleep(2)
  puts
  puts "Pete Johnston rows up in his skiff and hands you a map marked with three x marks."
  puts "B -- [B]each"
  puts "C -- [C]ave"
  puts "P -- [P]ond"
  print "What x will you follow?>"
  x_spot = gets.chomp.downcase
  if x_spot == "b"
     beach
  elsif x_spot == "c"
    cave
  elsif x_spot == "p"
    pond
  else
    map
  end
end
#---------------------------player sails east to elbow_cay----------------------
def elbow_cay
  puts "You meet Neil Hingle on the dock in Hope Town."
  puts "He could have a clue."
  puts "Y -- [Y]es"
  puts "N -- [N]o"
  puts "Do you want to go to Captain Jacks for a drink with him?"
  jacks = gets.chomp.downcase
  if jacks == "y"
     drunk
  elsif jacks == "n"
     puts "!!!CLUE!!! Rumour has it Pete Johnston was seen diving off the Spanish wreck off Little Harbour south of Elbow Cay.  "
    puts
    sleep(2)
    choose_compass
  else elbow_cay
  end
end
#--------------------------player sails west into the marsh---------------------
def marsh
  aground
end
#---------------player chooses to follow x_spot to the beach--------------------
def beach
  puts "Oh look!! Pete's Pub is selling frosty blasters"
  sleep(1)
  puts "Do you want to drink one? (y/n)"
  blaster = gets.chomp.downcase
  if blaster == "y"
    drunk
  elsif blaster == "n"
    found_cannon
  else
    beach
  end
end
#---------------player chooses to follow x_spot to the pond---------------------
def pond
  puts "Nothing but sunken boats in the pond."
  puts "Try the [B]each or the [C]ave next?"
  x_spot_two = gets.chomp.downcase
  if x_spot_two == "b"
    beach
  elsif x_spot_two == "c"
     cave
  else pond
  end
end
#---------------player chooses to follow x_spot to the cave---------------------
def cave
  puts "Nothing but bats in the cave."
  puts "P -[P]ond"
  puts "B -[B]"
  puts "Where two now?>"
  x_spot_three = gets.chomp.downcase
  if x_spot_three == "p"
     pond
  elsif x_spot_three == "b"
     beach
  else
    cave
  end
end

#-------------player runs the boat aground--------------------------------------
def aground
  puts "Casique runs hard aground!"
  puts "It's 10 hours until high tide!"
  puts " Y -[Y]es"
  puts " N -[N]o"
  print "Do you start drinking beer?>"
  beer = gets.chomp.downcase
  if beer == "y"
     drunk
  elsif beer == "n"
     choose_compass
  else
     aground
  end
end

#-----------------player found_cannon and wins the game-------------------------
def found_cannon
  puts <<-EOP
  ▌════════════════════════▐
  ▌══▄▄▓█████▓▄═════▄▄▓█▓▄═▐
  ▌═▄▓▀▀▀██████▓▄═▄▓█████▓▌▐
  ▌═══════▄▓███████████▓▀▀▓▐
  ▌═══▄▓█████████▓████▓▄═══▐
  ▌═▄▓████▓███▓█████████▓▄═▐
  ▌▐▓██▓▓▀▀▓▓███████▓▓▀▓█▓▄▐
  ▌▓▀▀════▄▓██▓██████▓▄═▀▓█▐
  ▌══════▓██▓▀═██═▀▓██▓▄══▀▐
  ▌═════▄███▀═▐█▌═══▀▓█▓▌══▐
  ▌════▐▓██▓══██▌═════▓▓█══▐
  ▌════▐▓█▓══▐██═══════▀▓▌═▐
  ▌═════▓█▀══██▌════════▀══▐
  ▌══════▀═══██▌═══════════▐
  ▌═════════▐██▌═══════════▐
  ▌═════════▐██════════════▐
  ▌═════════███════════════▐
  ▌═════════███════════════▐
  ▌════════▐██▌════════════▐
  ▌▓▓▓▓▓▓▓▓▐██▌▓▓▓▓▓▓▓▓▓▓▓▓▐
  ▌▓▓▓▓▓▓▓▓▐██▌▓▓▓▓▓▓▓▓▓▓▓▓▐
  ▌▓▓▓▓▓▄▄██████▄▄▄▓▓▓▓▓▓▓▓▐
  ██████████████████████████
  EOP
  puts "!!!* Pirate Pete Johnston hid the stolen cannons in his parking lot***!!!"
  puts
  puts "The authorities are on the way!  Thanks for helping us find the connon!!"
  puts
  puts "No salvage rights for you.... Those cannons are the Queen's antiquity"
  puts
  sleep(1)
  puts "But can I buy you a drink? (y/n)"
  puts
  drink = gets.chomp.downcase
  if drink == "y" then drunk
  else puts "Rehab is for quiters!!! Bye Bye"
  end
  abort
end
#--------------player chooses to start drinking and gets drunk -----------------
def drunk
  puts <<-EOP
  ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
  ░░░░░░░░░░░░░░░░░░░░░▓████████████████████████▒░░░░░░░░░░░░░░░░░░░░
  ░░░░░░░░░░░░░░░░░░▓█████▓▒░░░░░░░░░░░░░░░▒██████▒░░░░░░░░░░░░░░░░░░
  ░░░░░░░░░░░░░░░░████▒░░░░░░░░░░░░░░░░░░░░░░░░░▓███▒░░░░░░░░░░░░░░░░
  ░░░░░░░░░░░░░░░███░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░███░░░░░░░░░░░░░░░
  ░░░░░░░░░░░░░▒██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒██░░░░░░░░░░░░░░
  ░░░░░░░░░░░░▒██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░░░░░░░░░░░░
  ░░░░░░░░░░░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░░░░░░░░░░░
  ░░░░░░░░░░░██▓░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒░░██░░░░░░░░░░░░
  ░░░░░░░░░░░██░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░██░░░░░░░░░░░
  ░░░░░░░░░░░██░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░██░░░░░░░░░░░
  ░░░░░░░░░░░██░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░██░░░░░░░░░░░
  ░░░░░░░░░░░██▒░██▓░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██▓░▒██░░░░░░░░░░░
  ░░░░░░░░░░░░██░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░██░░░░░░░░░░░░
  ░░░░░░░░░░░░██▒░██░░░░░▒▒▓███▒░░░░░░░▒███▓▒▒░░░░░██░▓██░░░░░░░░░░░░
  ░░░░░░░░░░░░░██░██░░██████████▒░░░░░▓██████████░░██▒██░░░░░░░░░░░░░
  ░░░░░░░░░░░░░░████░████████████░░░░░████████████░████░░░░░░░░░░░░░░
  ░░░░░░░░░░░░░░░███░▒██████████░░░░░░░██████████▒░██▒░░░░░░░░░▒░░░░░
  ░░░▒████░░░░░░░▓█▒░░█████████░░░░░░░░░█████████░░▒█▓░░░░░░▓████░░░░
  ░░░██░▒██▒░░░░░██░░░░██████▓░░░░█░█░░░░███████░░░░██░░░░░███░░██░░░
  ░░░██░░░██▓░░░░██░░░░░░▒▓▓░░░░▒██░██░░░░░▓▓▒░░░░░▒██░░░░███░░░██░░░
  ░▓██▒░░░░████▓░░██░░░░░░░░░░░░███░███░░░░░░░░░░░░██░░█████░░░░▓██▒░
  ██▓░░░░░░░░▒████████▓░░░░░░░░████░███▓░░░░░░░▒▓████████░░░░░░░░░███
  ██▓▒▓███▓░░░░░░▓████████▓░░░░████░███▓░░░░▓████████▓░░░░░░████▓▓███
  ░███████████▒░░░░░░███████░░░░██░░░██░░░░██████▓░░░░░░▓███████████░
  ░░░░░░░░░░▓█████░░░░██▓▓░██░░░░░░░░░░░░░██░█▒██░░░▒█████▓░░░░░░░░░░
  ░░░░░░░░░░░░░▒█████▒▒█▓█░███▓▓▒▒▒▓▒▒▓▓▓███▒███░▓█████░░░░░░░░░░░░░░
  ░░░░░░░░░░░░░░░░░▒████▒▓█▒▒█░█▒█░█░█▓█▒█▓░█░█████▒░░░░░░░░░░░░░░░░░
  ░░░░░░░░░░░░░░░░░░░░██░░██▓█▓█▓█▒█▒█▓█▓████░▓█▓░░░░░░░░░░░░░░░░░░░░
  ░░░░░░░░░░░░░░░░░▓████▓░▓█▓█░█▒█░█░█▒█▒███▒░██████░░░░░░░░░░░░░░░░░
  ░░░░░░░░░░░░░▓█████░░██░░░▒█████▓█▓█████▒░░░██░▒█████▓░░░░░░░░░░░░░
  ░░░░▒██████████▓░░░░░███░░░░░░░░░░░░░░░░░░░██▒░░░░░▓██████████▒░░░░
  ░░░░██░░░▓▓▓░░░░░░▒██████▓░░░░░░░░░░░░░░░███████▒░░░░░░▓▓▒░░▒██░░░░
  ░░░░▓██░░░░░░░░▓████▓░░░█████▒░░░░░░▒▓█████░░░▓████▓░░░░░░░▒██▓░░░░
  ░░░░░░███░░░░████▒░░░░░░░░▓█████████████▒░░░░░░░░▒████░░░░███░░░░░░
  ░░░░░░░██░░░██▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓██░░░██░░░░░░░
  ░░░░░░░██▒▓██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒██▒▓██░░░░░░░
  ░░░░░░░░████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░████░░░░░░░░
  ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
  EOP
  puts "GAME OVER ya Drunk! "
  puts
  puts "Do you want to play again? (y/n)"
  play = gets.chomp.downcase
  if play == "y" then choose_compass
  else abort
  end
end

#-----------------------------call methods ------------------------------------
show_intro
#steph looked at this
