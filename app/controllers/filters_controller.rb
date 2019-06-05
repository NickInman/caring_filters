class FiltersController < ApplicationController
  def index
    if params[:zip]
      @results = SearchDb.search(params[:zip])
    else
      flash.notice = 'Error'
    end
  end

  private

  def filter_params
    params.require(:filter).permit(:zip, :reviews, :rating, :cost, :enhanced, :carehome)
  end

end
