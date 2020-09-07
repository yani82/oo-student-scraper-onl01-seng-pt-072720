require 'nokogiri'
require 'open-uri'
require 'pry'

#"https://learn-co-curriculum.github.io/student-scraper-test-page/"

class Scraper

  def self.scrape_index_page(index_url)
    # student [] 
    doc = Nokogir::HTML(open(index_url))
    #doc = Nokogiri::HTML(html) #converts to nodesets 
    doc.css('.student-card').map do |student| 
      {
        :name => student.css('.student-name').text,
        :location => student.css('.student-location').text,
        :profile_url => student.css('a').first['href']
      }
    end 
    
  end

  def self.scrape_profile_page(profile_url)
    profile - Nokogiri::HTML(open(profile_url))
    profile_hash = profile.css('.vitals-container').map do |detail| 
      {
        binding.pry 
        :bio => de 
        :profile_q =>
        :twitter => 
        :linkedin => 
        :github => 
        :blog => 
      }
    end 
    profile_hash[0]
  end

end

#student_card = doc.css('.student-card')
#student_names = student_card.css('.student-name').text 
#student_locations = student_card.css('.student-location').text 
#student_profile = student_card.css('a').first[href]

#details-container 

