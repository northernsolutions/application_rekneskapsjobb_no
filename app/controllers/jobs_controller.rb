class JobsController < ApplicationController
  def index
    @jobs = Job.all.order('exclusive DESC').order('published_at DESC').paginate(:page => params[:page], :per_page => 2)
    @banners = Banner.all
  end

  def show
    @job = Job.find(params[:id])
    @banners = Banner.all
  end

  def search
    @banners = Banner.all
    @jobs = Job.search(params)
  end
end
