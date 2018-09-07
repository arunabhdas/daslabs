require 'rubygems'
require 'nokogiri'


class Baseband
  def self.bootstrapweb(n = "Baseband")
    puts "Writing output.html to : #{Dir.pwd}"
    doc = Nokogiri::HTML <<-EOHTML
     <html>
     <body>
        <item>
          <time>05.04.2011 9:53:23</time>
          <iddqd>42</iddqd>
          <idkfa>woot</idkfa>
        </item>
      </body>
      </html>
      EOHTML

      hammer = doc.at_css "time"
      hammer.name = n
      doc.css("iddqd").remove
      doc.css("idkfa").remove

      outfile = File.new("output.html", "w")
      outfile.puts doc.to_html
      outfile.close
  end

  def self.bootstrapandroid(n = "Baseband")
    puts "Writing output.xml to : #{Dir.pwd}"
    doc = Nokogiri::HTML <<-EOHTML
    <?xml version="1.0" encoding="utf-8"?>
     <body>
        <item>
          <time>05.04.2011 9:53:23</time>
          <iddqd>42</iddqd>
          <idkfa>woot</idkfa>
        </item>
      </body>
      </xml>
      EOHTML

      hammer = doc.at_css "time"
      hammer.name = n
      doc.css("iddqd").remove
      doc.css("idkfa").remove

      outfile = File.new("output.xml", "w")
      outfile.puts doc.to_html
      outfile.close
  end

  def self.bootstrapios(n = "Baseband")
    puts "Writing ios project to : ", n
  end

  def self.usage
    puts "Usage is as follows | bootstrapweb | bootstrapandroid | bootstrapios |"
  end

end

