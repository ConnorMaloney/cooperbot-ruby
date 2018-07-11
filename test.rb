require 'pocketsphinx-ruby'
require "espeak"
include ESpeak

Speech.new("Hello World, My name is Cooper.").speak
Pocketsphinx::LiveSpeechRecognizer.new.recognize do |speech|
  puts speech
  Speech.new(speech).speak
end