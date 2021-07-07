require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

nokogiri::HTML(html)

doc = Nokogiri::HTML(open("https://flatironschool.com/"))
doc.css(".headline-260IBN")