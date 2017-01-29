#!/usr/bin/env ruby

require 'open-uri'
require 'nokogiri'

BASE_URL = 'kickass.unblocked.ink'
TIMES  = ['Today', 'Y-day']
IGNORE = ['hindi', 'desi']

def kickparse
    movie_list = []
    
    (1..10).each do |page|
        movies = get_links(page)
        movies.each { |m| movie_list << m }
    end

    return movie_list
end

def get_links pagenum
    movies = []

    doc = Nokogiri::HTML(open("http://#{BASE_URL}/movies/#{pagenum}/"))
    tbl_movies = doc.css("table")[1]
    tbl_movies.css('tr').each do |row|

        if t = row.at_css('.cellMainLink') then 

            next if IGNORE.any? { |w| t.text.downcase.include? w }

            if TIMES.any? { |tm| row.css('td')[2].text.include? tm } then
                movies << { :title => t.text.strip, :link => "https://#{BASE_URL}#{t['href']}", :magnet => row.css('.icon16')[1]['href'], :filesize => row.css('td')[1].text.strip}
            end

        end

    end

    return movies
end
