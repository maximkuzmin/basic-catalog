class Api::CompaniesController < Api::ApplicationController
  def show
    @company = Company.find(params[:id])
  end
end
