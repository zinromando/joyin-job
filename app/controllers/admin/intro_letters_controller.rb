class Admin::IntroLettersController < ApplicationController
  before_action :authenticate_user!
  before_action :require_is_admin

  layout 'admin'

  def index
    @activity = Activity.find(params[:activity_id])
    @intro_letters = @activity.IntroLetters.order('created_at DESC')
  end
end
