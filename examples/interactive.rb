require 'tty-prompt'
require 'daslabs'


prompt = TTY::Prompt.new
prompt.ask('Where shall we scaffold the Android app?', default: ENV['PWD'])

prompt.yes?('Would you like to populate the app with sample data?')


choices = %w(web android ios)
prompt.multi_select("What type of template would you like?", choices)

DasLabs.bootstrapios("----------%w")