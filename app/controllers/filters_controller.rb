class FiltersController < ApplicationController

  def index
    if params[:zip]
      @results = SearchDb.search(params[:zip], params[:reviews], params[:rating])
    else
      flash.notice = 'Nothing yet'
    end
    render :index
  end

  private

  def filter_params
    params.require(:filter).permit(:zip, :reviews, :rating, :cost, :enhanced, :carehome)
  end

end
