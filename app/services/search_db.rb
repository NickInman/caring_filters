class SearchDb < ApplicationRecord

  def self.search(zip, reviews, rating)
    results = []
    url = "#{Rails.root}/app/assets/data.json"
    @data = File.read(url)
    parsed = JSON.parse(@data)
    parsed["data"]["localSearch"]["localResources"]["nodes"].each do |result|
      if result["postalCode"] === zip && result["reviewCount"].to_i >= reviews.to_i && result["averageRating"].to_i >= rating.to_i
        results << result
      end
    end
    parse_search(results)
  end

  def self.parse_search(results)
    result_array = []
    results.each do |data|
      result = Result.new
      result.resultId = data["resultId"]
      result.name = data['name']
      result.address = data['addressLine1']
      result.postalCode = data['postalCode']
      result.enhanced = data['isEnhanced']
      result.careHome = data['isCareHome']
      result.description = data['selfDescription']
      result.averageCost = data['averageCost']
      result.averageRating = data['averageRating']
      result.foodRating = data['foodRating']
      result.reviews = data['reviewsCount']
      result.url = data['url']
      result.websiteUrl = data['websiteUrl']
      result.phone = data["primaryPhoneNumber"]["e164"]
      result_array << result
    end
  end

end
