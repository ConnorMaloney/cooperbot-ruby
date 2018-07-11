require 'pocketsphinx-ruby'
require "espeak"
include ESpeak

# This uses the built in mac os
# system('say Hello World, My name is Cooper.')

# Define speech variables
intro1 = ["Hello world, My name is Cooper.", "Hi there, I'm Cooper.", "Cooper here.", "Cooper bot, loaded.",
"Hello. My name is Cooper.", "Bonjour, juh mah pelle Cooper", "A lohuh. My name is Cooper.", "Hey. Cooper here."].sample

intro2 = ["Pleasure to make your acquaintance.", "At your service.", "Let's roll.", "Primed and ready.", 
"Standing by.", "Let's do this.", "Ready to serve.", "Let's play.", "Let's begin.", "Systems ready.", 
"Ready for your orders, captain.", "Awaiting orders.", "Shall we play a game?", "Let's get it on!", "Listening...",
"Power at 100%. Ready.", "Let's not bugger this up.", "I'll do my best.", "We've got a job to do.",
"Let's just get this over with"].sample


# --- BEGIN PROGRAM ---
# Cooper introduces himself
puts intro1
Speech.new(intro1, pitch: 75).speak

puts intro2
Speech.new(intro2, pitch: 75).speak

# TODO: Cooper listens for voice to select which module to disarm



# NOTE: Test loop which has Cooper mirror utterance
# Pocketsphinx::LiveSpeechRecognizer.new.recognize do |speech|
  # puts speech
  # Speech.new(speech).speak
# end