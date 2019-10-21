module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected
  def check_user
    # Redirect and return any user that is trying to access
    # pages that are not specific to the type of user they are.
    if current_admin_platform
      flash.clear
      # if you have rails_admin. You can redirect anywhere really
      redirect_to(rails_admin.dashboard_path) && return
    elsif current_user
      flash.clear
      # The authenticated root path can be defined in your routes.rb in: devise_scope :user do...
      redirect_to(authenticated_user_root_path) && return
    end
  end
end