class ActivitiesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]

  def index
    @activities = Activity.where(is_hidden: false).order('created_at DESC')
  end

  def new
    @activity = Activity.new
  end

  def show
    @activity = Activity.find(params[:id])

    if @activity.is_hidden
      flash[:warning] = '本活动已经结束'
      redirect_to root_path
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def create
    @activity = Activity.new(activity_params)

    if @activity.save
      redirect_to activities_path
    else
      render :new
    end
  end

  def update
    @activity = Activity.find(params[:id])
    if @activity.update(activity_params)
      redirect_to activities_path
    else
      render :edit
    end
  end

  def destroy
    @activity = Activity.find(params[:id])

    @activity.destroy

    redirect_to activities_path
  end

  private

  def activity_params
    params.require(:activity).permit(:subject, :description, :field, :fee, :location, :contact_email, :is_hidden)
  end
end
