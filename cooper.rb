require 'pocketsphinx-ruby'
require "espeak"
include ESpeak

# Cooper introduces himself, then loops and repeats what you say
Speech.new("Hello World, My name is Cooper.").speak
Pocketsphinx::LiveSpeechRecognizer.new.recognize do |speech|
  puts speech
  Speech.new(speech).speak
end