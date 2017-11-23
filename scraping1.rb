require 'nokogiri'
require 'open-uri'

url = 'https://www.gamers.co.jp/tokuten/76935/'

charset = nil

html = open(url) do |f|
    charset = f.charset
    f.read
end

doc = Nokogiri::HTML.parse(html, nil, charset)
doc.xpath('//head/meta[@property="og:image"]').each do |node|
  p node.attribute("content").value
# doc.xpath('//*[@id="layouts"]/div[3]/div[5]/img').each do |node|
  # p node.attribute("src").value

  # node.xpath('span[@class="opn_date"]/strong').attribute("content").value
end
