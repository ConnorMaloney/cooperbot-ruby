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
"Let's just get this over with."].sample


# --- BEGIN PROGRAM ---
# Cooper introduces himself
puts intro1
Speech.new(intro1, pitch: 60, capital: 40, speed: 180).speak

puts intro2
Speech.new(intro2, pitch: 60, capital: 40, speed: 180).speak

# TODO: Cooper listens for voice to select which module to disarm
# def select_module
  # Pocketsphinx::LiveSpeechRecognizer.new.recognize do |speech|
  # when speech 



# NOTE: Test loop which has Cooper mirror utterance
# Pocketsphinx::LiveSpeechRecognizer.new.recognize do |speech|
  # puts speech
  # Speech.new(speech).speak
# end