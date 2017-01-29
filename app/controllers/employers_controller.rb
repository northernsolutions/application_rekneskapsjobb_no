class EmployersController < ApplicationController
  def index
    @employers = Employer.all.order('published_at DESC')
  end

  def show
    @employer = Employer.find(params[:id])
    @jobs = Employer.all
  end
end
