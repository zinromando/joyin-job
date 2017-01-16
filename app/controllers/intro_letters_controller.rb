class IntroLettersController < ApplicationController
  before_action :authenticate_user!

  def new
    @activity = Activity.find(params[:activity_id])
    @intro_letter = IntroLetter.new
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @intro_letter = IntroLetter.new(intro_letter_params)
    @intro_letter.activity = @activity
    @intro_letter.user = current_user

    if @intro_letter.save
      flash[:notice] = '成功提交自荐信'
      redirect_to activity_path(@activity)
    else
      render :new
    end
  end

  private

  def intro_letter_params
    params.require(:intro_letter).permit(:content, :attachment)
  end
end
