class ResultsController < ApplicationController

  def index

  end

  def create
    @result = Result.find_or_create_by(resultId: result_params['resultId']) do |r|
      r.resultId = result_param["resultId"]
      r.name = result_param['name']
      r.address = result_param['address']
      r.postalCode = result_param['postalCode']
      r.enhanced = result_param['enhanced']
      r.careHome = result_param['careHome']
      r.description = result_param['description']
      r.averageCost = result_param['averageCost']
      r.averageRating = result_param['averageRating']
      r.foodRating = result_param['foodRating']
      r.reviews = result_param['reviews']
      r.url = result_param['url']
      r.websiteUrl = result_param['websiteUrl']
      r.phone = result_param['phone']
    end
  end

  private

  def result_params
    params.require(:result).permit(:resultId, :name, :address, :postalCode, :enhanced, :careHome, :description, :averageCost, :averageRating, :foodRating, :review, :url, :websiteUrl, :phone)
  end

end
