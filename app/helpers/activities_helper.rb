module ActivitiesHelper
  def render_activity_status(activity)
    if activity.is_hidden
      '(隐藏)'
    else
      '(公开)'
    end
  end
end
