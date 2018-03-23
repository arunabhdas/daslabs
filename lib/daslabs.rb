
require "daslabs/version"
require "daslabs/baseband"

module DasLabs
  def self.hi(n = "Default Name")
    puts "Writing output.html to : #{Dir.pwd}"
    baseband = Baseband
    Baseband.name(n)
  end
end