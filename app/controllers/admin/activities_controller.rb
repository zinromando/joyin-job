class Admin::ActivitiesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
  before_action :require_is_admin
  layout 'admin'

  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def create
    @activity = Activity.new(activity_params)

    if @activity.save
      redirect_to admin_activities_path
    else
      render :new
    end
  end

  def update
    @activity = Activity.find(params[:id])
    if @activity.update(activity_params)
      redirect_to admin_activities_path
    else
      render :edit
    end
  end

  def destroy
    @activity = Activity.find(params[:id])

    @activity.destroy

    redirect_to admin_activities_path
  end

  def publish
    @activity = Activity.find(params[:id])
    @activity.publish!

    redirect_to :back
  end

  def hide
    @activity = Activity.find(params[:id])
    @activity.hide!

    redirect_to :back
  end

  private

  def activity_params
    params.require(:activity).permit(:subject, :description, :field, :fee, :location, :contact_email, :is_hidden)
  end
end
