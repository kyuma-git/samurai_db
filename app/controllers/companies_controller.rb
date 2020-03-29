class CompaniesController < ApplicationController
  def index
    @c = Company.ransack(params[:q])
    @companies = @c.result.includes(:country, :stage, :industries, :technologies).references(:industries, :technologies)

    @country = Country.all
    @stages = Stage.all
    @industries = Industry.all
    @technologies = Technology.all
  end

  def show
    @company = Company.find(params[:id])
  end
end
