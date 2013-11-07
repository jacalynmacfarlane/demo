class PatientSearchesController < ApplicationController
  def new
    @search = PatientSearch.new
  end

  def create
    @search = PatientSearch.create! (params[:search])
    redirect_to @search
  end

  def show
    @search = PatientSearch.find(params[:id])
  end

end
