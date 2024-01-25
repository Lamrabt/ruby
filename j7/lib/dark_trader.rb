require 'nokogiri'
require 'open-uri'
require 'uri'
def init
url= "https://coinmarketcap.com/all/views/all/"
uri = URI.parse(url)
html = URI.open(url).read
doc = Nokogiri::HTML(html)
tbody = doc.xpath('//table/tbody')
return tbody
end 
def name(tbody)
    names = []
    tbody.search('tr').each do |row|
        names_ = row.xpath('.//td[3]').text
        names << names_
    end
    return names
end
def value(tbody)
    values = []
    tbody.search('tr').each do |row|
        values_ = row.xpath('.//td[4]').text
        values << values_
    end
    return values
end
def final(names, values)
    puts wallet= names.zip(values).to_h
end

def perform
    tbody = init
    names = name(tbody)
    values = value(tbody)
    final(names, values)
end
perform