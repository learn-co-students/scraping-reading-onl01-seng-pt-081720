require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)
values = doc.css(".gridContainer-EnvccM .text-4GLMvr").each

values.each do |item|
    puts item.text.strip
end