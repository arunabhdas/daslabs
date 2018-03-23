
require "daslabs/version"
require "daslabs/baseband"

module DasLabs
  def self.generate_html(n = "Default Name")
    
    baseband = Baseband
    Baseband.generate_html(n)
  end

  def self.generate_android_xml(n = "Default Name")
    
    baseband = Baseband
    Baseband.generate_android_xml(n)
  end
end