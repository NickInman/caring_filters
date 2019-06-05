class SearchDb < ApplicationRecord

  def self.search(zip)
    results = Array.new
    url = "#{Rails.root}/app/assets/data.json"
    @data = File.read(url)
    parsed = JSON.parse(@data)
    parsed["data"]["localSearch"]["localResources"]["nodes"].each do |result|
      if result["postalCode"] === zip
        results << result
      end
    end
    parse_search(results)
  end

  def self.parse_search(results)
    results.each do |result|
      binding.pry
    end
  end

end
