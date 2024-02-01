require 'nokogiri'
require 'open-uri'
require 'uri'
require 'pry'
require 'json'
require 'csv'
def init
    url= "https://www.annuaire-des-mairies.com/val-d-oise.html"
    html = URI.open(url).read
    doc = Nokogiri::HTML(html)
    tbody = doc.xpath('//p/a/@href')
    return tbody
end
def name(init)
    names = []
    array = init.text.split("95")
    array.each do |ville|
        new_ville = ville.split(".")[0][1..]
        names << new_ville
    end
    names.shift
    return names
end

def mail
    url= "https://www.annuaire-des-mairies.com/val-d-oise.html"
    html = URI.open(url).read
    doc = Nokogiri::HTML(html)
    cities_url = Hash.new
    prefix_url = url= "https://www.annuaire-des-mairies.com"
    doc.xpath('//a[@class="lientxt"]').map do |link|
        cities_url[link.text] = "#{prefix_url}#{link['href'][1..-1]}"
    end
    mails = []
    #html = URI.open(cities).read
    #doc = Nokogiri::HTML(html)
    
    cities_url.each do |_,link|
        mail_ = Nokogiri::HTML(URI.open(link))
        email_ = mail_.css('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
        mails << email_
    end
    return mails
end
def final(names, mail)
    mailing = []
    hash = Hash[names.zip(mail)]
    hash.each do |k, v|
    mailing << {k => v }
    end
    return mailing
end

def save_json(mailing)
    File.open("../db/emails.json","w") do |f|
        f.write(JSON.pretty_generate(mailing))
    end
end

def save_csv(mailing)
    File.open("../db/emails.csv","w") do |f|
        f.write(mailing.to_csv)
    end
end

def perform
    names = name(init)
    puts mailing = final(names, mail)
    save_json(mailing)
    save_csv(mailing)
end
perform