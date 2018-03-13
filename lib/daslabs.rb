
require "daslabs/version"
require "daslabs/baseband"

module DasLabs
  def self.hi(n = "Default Name")
    baseband = Baseband
    Baseband.name(n)
  end
end