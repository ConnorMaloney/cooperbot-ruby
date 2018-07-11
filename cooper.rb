require 'pocketsphinx-ruby'
require "espeak"
include ESpeak

# This uses the built in mac os
system('say Hello World!')

# Cooper introduces himself, then loops and repeats what you say
puts "Hello World, My name is Cooper."
# Speech.new("Hello World, My name is Cooper.").speak
Speech.new("Hello World, My name is Cooper", pitch: 75).speak
intro = ["Pleasure to meet your acquaintance.", "At your service.", "Let's roll.", "Primed and ready.", "Standing by."].sample
puts intro
Speech.new(intro, pitch: 75).speak
# Speech.new("yes........ yes... no... no... yes... no... yes...", pitch: 75).speak




# Pocketsphinx::LiveSpeechRecognizer.new.recognize do |speech|
  # puts speech
  # Speech.new(speech).speak
# end