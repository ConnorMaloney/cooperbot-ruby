# cooperbot
Voice recognition bot that helps out with various games


# Installation
Regardless of your operating system, you'll need your ruby environment set up first. Specifically, you'll need Ruby, rbenv, and Bundler gem install bundler.

OSX
Install homebrew.

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
Install rbenv. brew install rbenv

Install bundler. gem install bundler

Next, install pocketsphinx-ruby's dependencies for voice recognition. (More detailed instructions here: https://github.com/watsonbox/pocketsphinx-ruby#installation)

$ brew tap watsonbox/cmu-sphinx
$ brew install --HEAD watsonbox/cmu-sphinx/cmu-sphinxbase
$ brew install --HEAD watsonbox/cmu-sphinx/cmu-pocketsphinx
Next, install espeak.

$ brew install espeak
