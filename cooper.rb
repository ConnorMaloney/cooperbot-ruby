require 'pocketsphinx-ruby'
require "espeak"
include ESpeak

# NOTE: This uses the built in mac os
# system('say Hello World, My name is Cooper.')

# NOTE: Tests cooper's voice
# Speech.new("Calculating...", pitch: 60, capital: 40, speed: 180).speak
# Speech.new("Recommend you avoid that route, and follow these coordinates: Whiskey... Tango... Foxtrot... India... Sierra... Golf... Oscar... India... November... Golf... Oscar... November.", pitch: 60, capital: 40, speed: 180).speak

# --- Define speech variables ---
intro1 = ["Hello world, My name is Cooper.", "Hi there, I'm Cooper.", "Cooper here.", "Cooper bot, loaded.",
"Hello. My name is Cooper.", "Bonjour, juh meh pelle Cooper", "A lohuh. My name is Cooper.", "Hey. Cooper here."].sample

intro2 = ["Pleasure to make your acquaintance.", "At your service.", "Let's roll.", "Primed and ready.", 
"Standing by.", "Let's do this.", "Ready to serve.", "Let's play.", "Let's begin.", "Systems ready.", 
"Ready for your orders, captain.", "Awaiting orders.", "Shall we play a game?", "Let's get it on!", "Listening...",
"Power at 100%. Ready.", "Let's not bugger this up.", "I'll do my best.", "We've got a job to do.",
"Let's just get this over with.", "Let's rock and roll!"].sample

# @bomb = Bomb.new

# TODO: Cooper listens for voice to select which module to disarm
def select_module
  # Configuration links to a file that provides grammars for the first set of commands (e.g. set module X, charlie reset, etc).
  # These words get stored in a variable im guessing
  configuration = Pocketsphinx::Configuration::Grammar.new('grammars/cooper.gram')
  recognizer = Pocketsphinx::LiveSpeechRecognizer.new(configuration)
  recognizer.recognize do |speech|
    case speech
    when "cooper bomb check"
      Speech.new("Check", pitch: 60, capital: 40, speed: 180).speak
      return select_module
    
    when "hey cooper"
      Speech.new("Hello!", pitch: 60, capital: 40, speed: 180).speak
      return select_module

    when "how are you doing"
      Speech.new("I'm doing fine thanks, but we've got some important business to attend to so lets get to it!", pitch: 60, capital: 40, speed: 180).speak
      return select_module

    # when "cooper we lost"
      # Responses:  - Mission failed, we'll get em next time
      #             - We must accept finite disappointment, but never lose infinite hope
      #             - Its not my fault
      #             - I blame you
      #             - Blast. Shall we try again?
      # Speech.new("I'm doing fine thanks, but we've got some important business to attend to so lets get to it!", pitch: 60, capital: 40, speed: 180).speak
      # return select_module
    end
  end
end



# --- LAUNCH PROGRAM ONCE EVERYTHING IS LOADED ---
# Cooper introduces himself
puts intro1
Speech.new(intro1, pitch: 60, capital: 40, speed: 180).speak

puts intro2
Speech.new(intro2, pitch: 60, capital: 40, speed: 180).speak
select_module