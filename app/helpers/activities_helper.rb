module ActivitiesHelper
  def render_activity_status(activity)
    if activity.is_hidden
      content_tag(:span, '', class: 'fa fa-lock')
    else
      content_tag(:span, '', class: 'fa fa-globe')
    end
  end
end
