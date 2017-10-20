class Scraping_product < ApplicationRecord
  def self.zozo_urls
    links = []
    agent = Mechanize.new
    agent.user_agent_alias = 'Mac Firefox'
    current_page = agent.get("http://zozo.jp/ranking/all-sales.html")
    elements =  current_page.search('#rankingItem .clearfix div .photo a')
    elements.each do |element|
      links << element.get_attribute('href')
    end
    binding.pry

    links.each do |link|
      get_scraping_product('http://zozo.jp/' + link)
    end
  end

  def self.get_scraping_product(link)
    agent = Mechanize.new
    page = agent.get(link)
    image_url = page.at('.photo img')[:src] if page.at('.photo img')
    scraping_product = Scraping_product.where(image_url: image_url).first_or_initialize
    scraping_product.save
  end
end


