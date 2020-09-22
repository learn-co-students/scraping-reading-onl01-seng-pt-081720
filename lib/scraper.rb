require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")



doc = Nokogiri::HTML(open("https://flatironschool.com/"))
puts doc.css(".headline-26OIBN").text.strip
courses = doc.css("#id-3c239880-48cf-5ce7-84d0-578546d87586 .inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")

courses.each do |course|
  binding.pry
  puts course.text.strip
end
