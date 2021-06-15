require "daslabs/version"
require "daslabs/baseband"

module DasLabs

  class DasLabsCentral
    def self.bootstrapweb(n = "DefaultName")
    
      baseband = Baseband
      Baseband.bootstrapweb(n)
    end
  
    def self.bootstrapandroid(n = "DefaultName")
      
      baseband = Baseband
      Baseband.bootstrapandroid(n)
    end
  
  
    def self.bootstrapios(n = "DefaultName")
      
      baseband = Baseband
      Baseband.bootstrapios(n)
    end
  
    def self.usage
      
      baseband = Baseband
      Baseband.usage
    end
  end

end
