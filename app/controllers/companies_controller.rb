class CompaniesController < ApplicationController
  def index
    @c = Company.ransack(params[:q])
    @companies = @c.result.includes(:country, :stage, :industries).references(:industries)
    
    @country = Country.all
    @stages = Stage.all
    @industries = Industry.all
  end

  def show
  end
end
