require 'nokogiri'
require 'open-uri'
require 'pry'

#"https://learn-co-curriculum.github.io/student-scraper-test-page/"

class Scraper


  def self.scrape_index_page(index_url)	  def self.scrape_index_page(index_url)

    doc = Nokogiri::HTML(open(index_url))
    student_array = []
    doc2 = doc.css(".roster-cards-container .student-card")
    doc2.each do |student_card_div|
      student_array << { 
        :name => student_card_div.css(".student-name").text.strip,
        :location => student_card_div.css(".student-location").text.strip,
        :profile_url => student_card_div.css("a").attribute("href").value
      }
    end
    student_array
