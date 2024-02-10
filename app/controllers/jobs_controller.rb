class JobsController < ApplicationController
  def index
    @jobs = Job.includes(:tag).all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
    @tags = Tag.order(:name)
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to job_path(@job)
    else
      render 'new'
    end
  end

  private
  def job_params
    params.require(:job).permit(:name, :status, :tag_id)
  end
end
